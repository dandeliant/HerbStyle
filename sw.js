/* HerbStyle service worker — strategia network-first z zapasem offline.
   Świeża wersja jest zawsze pobierana z sieci (aktualizacje działają od razu),
   a ostatnia znana kopia jest serwowana, gdy nie ma internetu. */
const CACHE = 'herbstyle-v2';

self.addEventListener('install', e => { self.skipWaiting(); });
self.addEventListener('activate', e => {
  e.waitUntil((async () => {
    const keys = await caches.keys();
    await Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)));
    await self.clients.claim();
  })());
});

self.addEventListener('fetch', e => {
  if (e.request.method !== 'GET') return;
  e.respondWith((async () => {
    try {
      // 'no-cache' = zawsze rewaliduj z serwerem (pomija przeterminowany cache HTTP przeglądarki)
      const fresh = await fetch(e.request, { cache: 'no-cache' });
      if (fresh && fresh.ok) {
        const cache = await caches.open(CACHE);
        cache.put(e.request, fresh.clone());
      }
      return fresh;
    } catch (err) {
      const cached = await caches.match(e.request, { ignoreSearch: true });
      if (cached) return cached;
      throw err;
    }
  })());
});
