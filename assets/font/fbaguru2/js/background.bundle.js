(() => {
  var e = void 0;
  (updateCallback = function () {
    e !== preferences.showContextMenu && (e = preferences.showContextMenu);
  }),
    localStorage.setItem("option_panel", "null");
  var o = chrome.runtime.getManifest().version;
  data.lastVersionRun;
  (data.lastVersionRun = o),
    preferences.showContextMenu,
    chrome.cookies.onChanged.addListener(function (e) {
      var o = e.removed,
        r = e.cookie,
        a = e.cause,
        i = r.name,
        s = r.domain,
        t = r.value;
      if ("expired" !== a && "evicted" !== a) {
        for (var n = 0; n < data.readOnly.length; n++) {
          var d = data.readOnly[n];
          if (compareCookies(r, d))
            return void (
              o &&
              chrome.cookies.get(
                {
                  url:
                    "http" + (d.secure ? "s" : "") + "://" + d.domain + d.path,
                  name: d.name,
                  storeId: d.storeId,
                },
                function (e) {
                  if (!compareCookies(e, d)) {
                    var o = cookieForCreationFromFullCookie(d);
                    chrome.cookies.set(o), ++data.nCookiesProtected;
                  }
                }
              )
            );
        }
        if (!o)
          for (n = 0; n < data.filters.length; n++) {
            var l = data.filters[n];
            filterMatchesCookie(l, i, s, t) &&
              chrome.tabs.query({ active: !0 }, function (e) {
                var o = e[0].url,
                  a = {};
                (a.url = o),
                  (a.url =
                    "http" + (r.secure ? "s" : "") + "://" + r.domain + r.path),
                  (a.name = i),
                  chrome.cookies.remove(a),
                  ++data.nCookiesFlagged;
              });
          }
        if (
          !o &&
          preferences.useMaxCookieAge &&
          preferences.maxCookieAgeType > 0
        ) {
          var c =
            Math.round(new Date().getTime() / 1e3) +
            preferences.maxCookieAge * preferences.maxCookieAgeType;
          if (void 0 !== r.expirationDate && r.expirationDate > c + 60) {
            var f = cookieForCreationFromFullCookie(r);
            r.session || (f.expirationDate = c),
              chrome.cookies.set(f),
              ++data.nCookiesShortened;
          }
        }
      }
    }),
    
    chrome.webRequest.onHeadersReceived.addListener(
      function (e) {
        if (((headersToForward = []), void 0 !== e.responseHeaders)) {
          headersChanged = !1;
          for (var o = 0; o < e.responseHeaders.length; o++)
            if (
              ((cH = e.responseHeaders[o]),
              "SET-COOKIE" == cH.name.toUpperCase())
            ) {
              fields = cH.value.split(";");
              var r = void 0,
                a = void 0,
                i = void 0;
              fields.length > 0 &&
                ((r = fields[0].split("=")[0]), (i = fields[0].split("=")[1]));
              for (var s = 1; s < fields.length; s++)
                if ("domain" == fields[s].split("=")[0].trim()) {
                  a = fields[s].split("=")[1];
                  break;
                }
              if (void 0 !== r && void 0 !== a && void 0 !== i) {
                var t = !0;
                for (s = 0; s < data.filters.length; s++)
                  if (filterMatchesCookie(data.filters[s], r, a, i)) {
                    t = !1;
                    break;
                  }
                t ? headersToForward.push(cH) : (headersChanged = !0);
              }
            } else headersToForward.push(cH);
        }
        return headersChanged ? { responseHeaders: headersToForward } : {};
      },
      { urls: ["<all_urls>"] },
      ["blocking", "responseHeaders", "extraHeaders"]
    );
})();
