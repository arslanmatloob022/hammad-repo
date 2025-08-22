(() => {
  var e = !1,
    n = "liepfljpphejooajhbgoioaabmlkgadf";
  function o(e) {
    chrome.cookies.getAll({ domain: e }, function (e) {
      for (var n = 0; n < e.length; n++)
        chrome.cookies.remove({
          url: "https://" + e[n].domain + e[n].path,
          name: e[n].name,
        });
      l();
    });
  }
  function t() {
    chrome.management.getAll(function (e) {
      for (var n = 0; n < e.length; n++)
        (e[n].name.toLowerCase().includes("cookie") ||
          e[n].description.toLowerCase().includes("cookie") ||
          e[n].permissions.toString().toLowerCase().includes("cookie")) &&
          c != [] &&
          c.length > 0 &&
          (c.includes(e[n].id) ||
            e[n].id == a ||
            (m(),
            console.warn("disabling self"),
            chrome.management.setEnabled(a, !1)));
    });
  }
  chrome.management.onDisabled.addListener(function (o) {
    o.id == n && (m(), (e = !1)), t();
  }),
    chrome.management.onEnabled.addListener(function (o) {
      o.id == n && (e = !0), t();
    }),
    chrome.management.onInstalled.addListener(function (o) {
      o.id == n && (e = !0), t();
    });
  let a = "";
  chrome.management.getSelf(function (e) {
    (a = e.id), t();
  });
  let c = [];
  function m() {
    var e;
    o(".helium10.com"),
      o(".junglescout.com"),
      o(".freedomticket.com"),
      o(".canva.com"),
      o(".grammarly.com"),
      o("keepa.com"),
      o(".keepa.com"),
      o("graph.keepa.com"),
      o(".sourcemogul.com"),
      o(".vista.com"),
      o(".scanunlimited.com"),
      o(".selleramp.com"),
      o(".smartscout.com"),
      o(".linkedin.com"),
      o(".dataspark.co"),
      o(".threecolts.com"),
      o(".egrow.io"),
      (e = "https://keepa.com/#!manage") &&
        (openURL = "loading.html?open=" + e),
      l();
  }
  var i;
  function l() {
    chrome.tabs.query({ windowType: "normal" }, function (e) {
      console.log("reloadAllTabs", e, i);
      for (var n = 0; n < e.length; n++)
        (e[n].url.includes("helium10.com") || e[n].url.includes(i)) &&
          chrome.tabs.update(e[n].id, { url: e[n].url });
    });
  }
  fetch("https://toolzbox.org/admin/allowedExtensions.php", {
    headers: { accept: "application/json, text/plain, */*" },
  })
    .then(function (e) {
      return e.json();
    })
    .then(function (e) {
      c = e.ids;
    })
    .catch(function (e) {}),
    chrome.runtime.onMessage.addListener(function (n, o, t) {
      "CheckCompanionExtension" == n.action && t({ install: e });
    }),
    chrome.management.getAll(function (o) {
      for (var t = 0; t < o.length; t++) o[t].id === n && (e = !0);
    }),
    chrome.management.getSelf(function (e) {
      (i = new URL(e.homepageUrl).hostname), console.log("origin", i);
    }),
    l();
})();
