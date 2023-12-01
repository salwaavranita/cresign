'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "fa75843c6e5c0f1b90e9ed6781a48d80",
"assets/AssetManifest.bin.json": "b6b4732827789ede3ee06d42e04450fb",
"assets/AssetManifest.json": "3beaa11a2326e0b68d8df530bd73432e",
"assets/assets/design/design1.png": "a9e68821b2506e8f5607da4c73b04873",
"assets/assets/design/design10.png": "4b7aa2bad04cd1616929bf6eb4b37bb6",
"assets/assets/design/design11.png": "e8e58b74c794feb4d5b05dd2b75de787",
"assets/assets/design/design12.png": "5a1a685870be0d1602284ac045c5e02c",
"assets/assets/design/design2.png": "7cdafc5441ed6bcae8c2faa7e62d95a6",
"assets/assets/design/design3.png": "8300ac75358b04be44e5a8a3f8273f57",
"assets/assets/design/design4.png": "37f0bccfec34270974638bc07b1a350d",
"assets/assets/design/design5.png": "d08ca23c48d7d07a8ce3a078549d4918",
"assets/assets/design/design6.png": "a1cec0ea03e9622f45c72b506522d40d",
"assets/assets/design/design7.png": "1c682cd127c625605eddb5fe6da63164",
"assets/assets/design/design8.png": "5391bf0fbd26a81126f392746d4a043e",
"assets/assets/design/design9.png": "287e05583f81d921c0ab58b3ce44a997",
"assets/assets/images/background-element1.png": "24416578cf5faddaf115d404ec90e97a",
"assets/assets/images/background-element2.png": "3584d88784bc5250ceb55143c07558f3",
"assets/assets/images/background-element3.png": "a15e2e9c1596bac70eff1763e2800270",
"assets/assets/images/background-element8.png": "031ba76cb89e275ea3121c44d746e48b",
"assets/assets/images/circle1.png": "7b588f1628d38a0c90c854d1fb872054",
"assets/assets/images/down-arrow2.png": "8a7ee29c881583077135f2d3d46bdbc8",
"assets/assets/images/element1.png": "8817cfe0a2d3f35892b380db1549a76b",
"assets/assets/images/Ellipse_14.png": "7694663eaaa94c2fbfd6d2076c4b6b41",
"assets/assets/images/Ellipse_15.png": "c2487e0fe6411618b235f628dfc349e4",
"assets/assets/images/Ellipse_16.png": "1773e19af6156926bf23b477834d55d1",
"assets/assets/images/feedback.png": "bbc417f5d42319519857cbb8f6293062",
"assets/assets/images/google.png": "33a6ed9cacccee57e699b574d4ff37e2",
"assets/assets/images/images1.png": "66d654f92f2580a76f10c021d18bb1ef",
"assets/assets/images/images2.png": "72b501ab54159de8a05cb131a7dd9973",
"assets/assets/images/images3.png": "5edd534f3e2ff2c2763e41c4e45215b2",
"assets/assets/images/logo.png": "e1bbf25a55bfc55c0c7c72310c64dfe6",
"assets/assets/images/materi.png": "a7cae6984a65a67836ac455b87eb9a95",
"assets/assets/images/person.png": "498c8812315eb948e28255a0094497e9",
"assets/assets/images/sosmed.png": "a25b3467d02b509c05e1960f056640cf",
"assets/assets/lottie/lottie1.json": "2a1d0b74529458c17a52d76d80afdf15",
"assets/assets/lottie/lottie2.json": "87a9e020850c52f2bf7fe6567f692ad6",
"assets/assets/lottie/signin.json": "9e6cac9292dbaf35356423fc0b34bc0a",
"assets/assets/pdf/BAB%2520_1.pdf": "e3d1fe21b5b2f63beaa31b5971e55166",
"assets/assets/pdf/BAB_1.pdf": "e3d1fe21b5b2f63beaa31b5971e55166",
"assets/assets/pdf/BAB_2.pdf": "0b1e8d6eac964646af04dd258d2b7207",
"assets/assets/pdf/BAB_3.pdf": "ae9d721eef366400809eabb0ee8aab16",
"assets/assets/pdf/BAB_4.pdf": "b7617477648d2134070d7a0c8e1bffbe",
"assets/assets/pdf/BAB_5.pdf": "f2244e4c6b6f02c9701a3c094ce39560",
"assets/assets/pdf/BAB_6.pdf": "ab381bea622458c555ed1833c17184c7",
"assets/assets/pdf/BAB_7.pdf": "49fc85013bd2129a0fff2d668c658cf2",
"assets/assets/pdf/BAB_8.pdf": "712ab143a3397f702285a74628fe7db8",
"assets/assets/person/person1.png": "c43e28b18a6f8ec865b49aca1e4a4ca2",
"assets/assets/person/person10.png": "ee4455a2d8199bac407a4d482527a779",
"assets/assets/person/person11.png": "acef8dc0dba880372f4d369a45177d3b",
"assets/assets/person/person12.png": "e46166df445793ae46efae69d176727d",
"assets/assets/person/person2.png": "cab3d7caa1b7d35bdc11d8859da8cd05",
"assets/assets/person/person3.png": "4e868948af16e1ace4289a2a9db871e1",
"assets/assets/person/person4.png": "03748b56733ac5bf2cc5e93f01122d5e",
"assets/assets/person/person5.png": "59fd3c7b3dd69b0eb9fb47dd87de21cc",
"assets/assets/person/person6.png": "917e3439807164e3116bc600855dc832",
"assets/assets/person/person7.png": "61edbebbf2157bb6fe75f920ceded239",
"assets/assets/person/person8.png": "aef750617ec0c9c7b209280f282f6ad9",
"assets/assets/person/person9.png": "099a1ccf475d65a2da2b7f2027035d9d",
"assets/assets/video/video1.mp4": "6178f9a26590c111e11977c3395c7ae5",
"assets/assets/video/video2.mp4": "7fa483a3a0bf9fd11f83f1c41ba5c203",
"assets/assets/video/video3.mp4": "6b20bc550fa309ddc4f4de1d73460dd8",
"assets/assets/video/video4.mp4": "fe86812dfc1fa5b88223ea2a1bd63959",
"assets/assets/video/video5.mp4": "a30706a9223b2cdc98d751d15a4db8d3",
"assets/assets/video/video6.mp4": "ed0d4f867231310840f953a6425ee296",
"assets/assets/video/video7.mp4": "0ed237b78f14a77bcc1e521d01b0a5cd",
"assets/assets/video/video8.mp4": "2c53d2ed12bcf802371c27f254c53acb",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "2e95e1af12bc4d8e2744b4a4cb520f63",
"assets/NOTICES": "8ffdfb7983641b8bbb0a90c08b076b36",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "f2163b9d4e6f1ea52063f498c8878bb9",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/youtube_player_iframe/assets/player.html": "dc7a0426386dc6fd0e4187079900aea8",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "87531cdf69af317c2ded9079b5656921",
"/": "87531cdf69af317c2ded9079b5656921",
"main.dart.js": "8976c87cc3a0e54e2592662465027f87",
"manifest.json": "3284cff45448f3024cee81fb61bff9cf",
"version.json": "1baada1549a49abe5382e368e57c4a43"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
