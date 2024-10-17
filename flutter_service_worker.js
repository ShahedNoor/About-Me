'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "84de19cac84a96358f5c44c489547ec5",
".git/config": "369d576fdc0515b47b8000ab5652ec15",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "d6628019dca291cf79c10adb10b6a597",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "8f7d8b13b9fb7ba0a920e5353d6275cf",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "bcfac805872fd2e29256fbe54027f1fe",
".git/logs/refs/heads/web": "81400db6a4f5cfdf48e44ec693716d19",
".git/logs/refs/remotes/origin/web": "00ba1ac7ae723de42518397a33137d52",
".git/objects/02/d09bd8f26faff4e44bc8a3c5555101d7c3d0b8": "d23ce41f4084227cf6ab69dad1cbb3ec",
".git/objects/04/a945d2d73a5b95facd41527a7d0371eb486dd9": "fbdd8866e7a22ff5c1a4957d239c7e11",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/0b/de53c512be33e1dfd5b4dcb173903f4cb331a8": "8ef76ee6100004bde8f032c261343414",
".git/objects/14/344d15e9b7c8cf01d6e23984533c9d637c6cad": "9b64332e3d3ca3591f22c7c95387121f",
".git/objects/14/de0750cfa952117cf63f93c018696fd2c62f2e": "5a0cccf4c305545bb2167fbf8b8de3aa",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/21/7aac62dbecfd521fa99743bfdab914fb6608d6": "fcad0936d9b078aa4b1038d52e7b6baf",
".git/objects/24/84908c485593505357cc62a2556d1e6ffd3f08": "86bda8ee71b7af19a13aafe47196d92f",
".git/objects/26/2f5720e6dbd80ad798588317455ed7cae8853b": "f1f8ce550ec3209c6e05666410d3486f",
".git/objects/28/c68f8641ffaf54f2b07a4c33ff5659394a06c8": "36e6480b91fbee41dde4db5d2ead4834",
".git/objects/28/de51885ff4cb8b0c55bb81ca9f589bd4a2e359": "1b08864929a80103a5162022fb95cb10",
".git/objects/28/e8d591c8bd1d1d573eba7581b42a33d90b03f8": "790da0831099a7c349af93bc770fef2c",
".git/objects/29/f294c6a871833cc6521b1e8fbe3115e5434cff": "5588b27763b63c7952311369f9524a54",
".git/objects/2a/d6a85781121aa0ed38f9f4da0ba90c47ca0baa": "f48e77695db9d71584e4315552d0486c",
".git/objects/2c/0c160cc24be7233c82c17c48c3512b8a106736": "fdac3bf7f72e23889922e98cd0473204",
".git/objects/2f/6848cf13bb4b32aceb42fe40ca1ab4d1cd248f": "dfd020485353e429308159aaf643bd24",
".git/objects/32/0beea997b1f28c7dede5cf766baa43d8964878": "c4c4b7d7f996c7c89ec40972f7ad1fc3",
".git/objects/32/7aca11fd042748d26f34a02f0d7ccd823c416b": "61902061594aab578b68f557c5f39520",
".git/objects/32/8ae5121b0e867ccf7f212d52406556eff83086": "d6e7c86c6d1e04d4fde7043d899a6b3f",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/33/77e3b32d01f4e389598180990c5ecaeeb6856c": "2dfbb4ed67b027094846539d714732a9",
".git/objects/33/82a5eaccc7ecb0e1ce2f6d28a07511bf20b93c": "c082736977c66985d5f674cb4de4ad0d",
".git/objects/33/9a63c5736510b414b43ede435768447d205c7a": "c3f5b7cdf7c42b0d213f00838c31fe0c",
".git/objects/35/a45596d3a205f9aec16d1c9e19c863a5bee453": "3308ee77c8d66e2ee95521f6076a5816",
".git/objects/3a/50bcf246953eac45889af16d2b3677deda2eba": "8088ab04e577ee09b6b83d07fe7586ee",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/3b/731f70a73d9b1614086a19cec09e34fb662297": "7ebe9b3d60323583698a7d015b9af592",
".git/objects/40/061f6e41c796580c3bb8ac47641daee16ad156": "19d884f7d26426a0a639ea0873ce27f8",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/43/b72f4496ad918568e98d621a72617142a4eb7d": "8e12f0ff51c73fd4e9cc0c746d37efc8",
".git/objects/43/eab9c11257d94e8ad5656b9e283b5ce187972d": "ca670aabfcacf622e86fadc6c508511d",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/48/c773465ab0fa5a9eba4da1ed3d2fb0170e5f7d": "af5e61722dba918a1440781ba11b7223",
".git/objects/49/369fb47f888a9f2968a549166bae6789eb2bae": "f96d61505bff008a8585f1ed32866c0c",
".git/objects/4f/f5a3ee1b337794561982eda91741646bd5f5f7": "acba16e772c3f0dc1c1e8784308af95a",
".git/objects/52/6311ec84617dc0b5f7ec846ce4961ef359a67c": "1f0eb169e6ea75e8106dab4b881c1924",
".git/objects/52/cc05bd6d8aa5d873153bbb65cfebcc96e74f3d": "872a4fbbfe3ca56e492a86b5368ef42c",
".git/objects/53/4ad51b412e74eadfdb16a3591bb3bfe193790a": "27c7980a7dfb5c83be9e432ce46b221f",
".git/objects/56/3d47536da4b7aa02ef98df3e4176b489e504b7": "eda136b88e16a457e23857d70251716e",
".git/objects/59/37ea8a644c1b2f56d3b03f6ce3bdb1bafb62af": "8d393dc7c887a13f503b303217e094c0",
".git/objects/5a/0fe989ed9b8ebbcf5d5b003a0f8e9210b3f2cc": "81ecd5df8923625c36ecea75aa9b1e52",
".git/objects/5d/09c2b653eaa7973491af34d2eebb927cf0f48c": "8164ec1ab5256e96718d83a2b4e72112",
".git/objects/5d/0a24874fead7cda32fdd5e563c7bbbb428e270": "33239ab957ae46e4a6b504b7391a699e",
".git/objects/61/1d7c4206e8cd555789dbd4c32e4c9bc3d3ab89": "5f77b69423165bf1d4e01a03519f1079",
".git/objects/64/806249bec59af7b8c375534c4e2055736cd375": "c276c391e870e3f4b968acbeb2241607",
".git/objects/69/651ad1243f04e2f215323dd16397f53cd95e75": "ce6e05cf40892defef2f09daccd191e4",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/6c/4d0b7435c3cfc0532b4eee1e540362d7b9a6b3": "6b117898c3c1e58a6eeb298975923d58",
".git/objects/6d/0f537249723991643fb09e997547c2d55a091e": "02a61c3803a3bbf9c1036539137cf66f",
".git/objects/6d/9d93d2944f2e491501e636c3f9aad4169945ce": "dcb4d121cd23d9c0ed1f9c9859eb66f4",
".git/objects/6e/10f70cf3520ebc21183be59c36fa7a4d7c9b4c": "cc99d9cd9a34c99458de192ea9f1f9c1",
".git/objects/7b/03e96d048de65565f13e63e7522f918881f25f": "6d3f641e3773e8fb7f7c257204e0cf91",
".git/objects/7e/2b0d7d7c09841e851ef1f47e7102d6530a8057": "8c84a8331ce747a5b000d13082385a05",
".git/objects/7f/e24ad4a8b101292163802c3cc6d4e8c93389f2": "4ae5a79b40712f18efc846ae8122dcdc",
".git/objects/83/f0ade1f43027ef96b3b309ddbe9cf1bf015b70": "1c46281306caa68ae632dcae792f58a3",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/85/ce8d246b13e519d207ba751be411de8cc17b90": "735854ccfa2453ef5c7d4f9d76da57a7",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/c37b64ea6d3ffe6276fb4d0fabbbcd88103388": "cd072eebe9027c776e37eee8d7ff0dff",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/9b/7f591365cc8faa21c2ad1cf7d2f1298a57ce1d": "0ce81e780bfc6c911906b1565d2e4f1e",
".git/objects/9b/eba181b8feab82ff6cf83e7835c0c757d646bd": "6cd4d11ddc0f72d0fc8d9a9431062f5f",
".git/objects/9f/8632f094cf5aa981ba0f189794ea238366ac4b": "0bbb1c9cb6766f6bdf4769b4ea7b138c",
".git/objects/a4/2e549208f63b13fa62455aa47bdb331a1833ca": "ee5ec91b7227f8c20ba34bb61c618d9d",
".git/objects/a8/e79b77fbf7db3c81ad874cab79ebb06e460965": "88adb82092c918ea851fb29ab70df887",
".git/objects/a9/799d27416c06816830af1ba9711b6266feaf73": "6db9af3dcdc8c80e19fcd0c79e8809c1",
".git/objects/a9/dcf30d039531135f3fd768ea04ecbbb5115a99": "0800e3aee44db059c163a889f176bfac",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b1/7722c93d3abffd47aea441cc3a5e7ef644e265": "0d5600ee5169f18bfd243ea4fcff1e30",
".git/objects/b2/0c63a44db55d5cf2adfdfdae1273ebdcfe4235": "36729f886b493e0649ce34243eda5c36",
".git/objects/b2/56a14778efaab913f10d22311bb875f3563dbc": "a1f819df107056f03f66ca9952504523",
".git/objects/b3/865e7a49acabc56c274321c90d240fdac60e9a": "ef0947efe58e4293c99ffaa37b49a85e",
".git/objects/b4/acd6a0d1cfa6323ae5bb8121d437a939429a2c": "9cbfa03b1e3a37163eb735a6e2b2bbc1",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/bc/f6e76a6b310f86a89e812ea9ade907b49d62ef": "e672d138e58e9ed982b1b809deac2151",
".git/objects/be/f6dce772c3c3acd48eef39027d5840df8f5317": "ecb1b8a2acb99bd298167bbb41c25b11",
".git/objects/c2/8a14e7ba8a3c39e38eb3794549d24fb3d56740": "f0931645326acbdddc48de1c4a04e4a6",
".git/objects/ca/95ee4c574579fcf0a9766be333d0b0fdebbc8a": "2fadcef229c475e79c38562b55990e5a",
".git/objects/cf/7673bed922370500d239386a1de61cf6bedb2a": "0a9ecab158414ae96b07ba750f8006c8",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d0/f91aa1e8a97c38e158cfe5aed8d91123347dc2": "b0bacb64c2e69ba3f682c5f59eb267f4",
".git/objects/d1/d23161607ab89950b9c8a71db8bbde3c2c108e": "5eae96427d8587c2a736bc6c850fc31b",
".git/objects/d2/4101003f8bab34c983d1ba42a17f2b82bad656": "6ebc4154e84ab9cbc8c9e784bcff88ea",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/e4/b2365ef39c8541ae6935231063bdf63fcf0293": "0a17e41261839436f1a4208c178f2e5b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/20b6aefcf5f8464e8eba27bd5a0610d296775a": "844ed1d4f67edeb0566b493309a5aa57",
".git/objects/ee/761adb0762ae48896a0d1e6c526380647afdef": "588a7e8ca4757f4daf9f08717a0e3807",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/9b1874222b90011fc18cceb093462226b74b90": "b162bef95e4ae67a1201070fbbc211a5",
".git/objects/f5/bbbfc3cb80bfe5fa7ccd00dbcb36d1dff79771": "5f9dec98dee99b22d2340c7b3c7a7e92",
".git/objects/f6/3d200aade8d6a160fda5f8ccbf60eba431e1ff": "cd3ff532a7a427e8e31544c321190864",
".git/objects/fc/00d265321b2ee8a0cbbeb1fd8a1d8f34caa770": "591ae6751c95ec23eb1aac21aa97dc7b",
".git/objects/fc/02de43ec4a896bc5eca47399b17bbb47eaca5c": "729b25b610bba0661d857f82d5915f8a",
".git/objects/ff/d73a2846bec964a047723beed046fccd681f8a": "473f327096d982fd87c7d65084083f98",
".git/refs/heads/web": "d83357551107aee9fc60b526c5944bcc",
".git/refs/remotes/origin/web": "d83357551107aee9fc60b526c5944bcc",
"assets/AssetManifest.bin": "c8718e1c70484e7e2c74107d09064ac0",
"assets/AssetManifest.bin.json": "275e85e75d0cc4f463d42c6769d7900e",
"assets/AssetManifest.json": "d1b8c89afcb3efc09c844ee3cca803ef",
"assets/assets/fonts/HackbotFreeTrial.ttf": "2a994a5d4813b2f02c5329d1fcf36e39",
"assets/assets/fonts/RobotoMono-VariableFont_wght.ttf": "336102a48d996db3d945a346b1790b1f",
"assets/assets/icons/adobe-xd.svg": "1a91ebfa5397ab51981c74f35d5b2edc",
"assets/assets/icons/dart.svg": "20d7b82998ddc6f73a4310bf58e609df",
"assets/assets/icons/figma.svg": "bb5a63f89698f21948f4d402234e6532",
"assets/assets/icons/firebase.svg": "1da8d950e3f30a69d7c957c26238e1de",
"assets/assets/icons/flutter.svg": "5c3a6308a335872a831a9f836f0e236c",
"assets/assets/icons/html-5.svg": "a0657d1cac3b20f1e113738056db3c63",
"assets/assets/icons/js.svg": "8ee02715beb101d7d505a9473bfb2754",
"assets/assets/icons/node-js.svg": "23a18bbb1377c88b2fcc15f321e18a66",
"assets/assets/icons/tailwind-css.svg": "a5d7e53c1485b55bbe286476c3b00959",
"assets/assets/images/header_logo/dev.noor.png": "32a9c9ba70a7dd254466cfe3f4e51c8a",
"assets/assets/images/profile_image/profile_image.png": "463ee92135ee88b9ce338965f2c225a1",
"assets/assets/images/projects_image/social_wall.png": "685231f56aa0d200dc9b490060feb04f",
"assets/FontManifest.json": "c944d930a196fe5eb9faae91fe3a740a",
"assets/fonts/MaterialIcons-Regular.otf": "2f290d4de1f2a98e95be18b1b73b070e",
"assets/NOTICES": "3fd9637ce936378ae71365ca9e6b012f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1d035b40e3548e6c7f47e4e3884551f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "94a7a5cff2162326c075a68058ef0fa4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4ac2a1fc8a9384f675f960805fc10919",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "2ba35bdfd59c2a944fdc574988ac322d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "68966f7590df1cba55ed0ac59164d139",
"/": "68966f7590df1cba55ed0ac59164d139",
"main.dart.js": "29e1cb5ffecf855892219aafdea889c1",
"manifest.json": "1f1a3a9cbc78b209b27240989f6aa8d5",
"version.json": "784f31824f19cba47e27914ebda26396"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
