chrome.runtime.onMessage.addListener(function (e, o, n) {
    var r;
    console.log("%c message rece " + e.action, "color: blue; font-size: 20px"),
      "CheckCompanionExtension" != e.action &&
        ("closeTab" == e.action &&
          chrome.tabs.query({}, function (e) {
            for (var o = 0; o < e.length; o++)
              e[o].url.includes("keepa.com") &&
                (console.log("tab removed"),
                setTimeout(
                  (e) => {
                    chrome.tabs.remove(e.id),
                      console.log("%c tab removed 2 ", "color:blue"),
                      console.log("tab.url ", e.url),
                      open(e.url);
                  },
                  500,
                  e[o]
                ));
          }),
        "import" == e.action
          ? ((function (e) {
              try {
                var o = $.parseJSON(e);
                "[object Object]" === Object.prototype.toString.apply(o) &&
                  (o = [o]);
                for (var n = 0; n < o.length; n++)
                  try {
                    var r = o[n];
                    "." == r.domain[0] &&
                      (r.domain = r.domain.substr(1, r.domain.length - 1));
                    var t = cookieForCreationFromFullCookie(r);
                    chrome.cookies.set(t);
                  } catch (e) {
                    return void console.error(e);
                  }
              } catch (e) {
                return void console.error(e);
              }
            })(e.data),
            setTimeout(() => {
              n({ farewell: "loggedin" });
            }, 700))
          : "deleteAll" == e.action &&
            ((r = e.url),
            chrome.cookies.getAll(r, function (e) {
              deleteAll(e, r);
            })),
        e.href && open("loading.html?open=" + e.href));
  }),
    chrome.runtime.onMessageExternal.addListener(function (e, o, n) {
      if ("CheckCompanionExtension" != e.action)
        return (
          e && e.message && "version" == e.message && n({ extName: "toolshub" }),
          !0
        );
    });
  