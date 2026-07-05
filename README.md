# 🌿 HerbStyle — Dziennik Zdrowych Nawyków

Interaktywna aplikacja HTML do śledzenia postępów w zmianie nawyków żywieniowych i przejściu na zdrowy styl życia.

## Uruchomienie

Otwórz plik `index.html` w dowolnej przeglądarce — nie wymaga instalacji ani serwera.
Dane zapisują się automatycznie w pamięci przeglądarki (localStorage).

## Funkcje

- **⚙️ Profil i cele** — dane startowe (masa ciała, data startu, wzrost), dzienne zapotrzebowanie (kalorie, białko, woda) oraz wartości Start → Cel dla obwodów ciała i analizy składu ciała (BMI, tkanka tłuszczowa, masa mięśni, BMR, wiek metaboliczny i inne).
- **🍽️ Dziennik dnia** — zapis posiłków (śniadanie, przekąski, lunch/obiad, kolacja, inne) z godziną, białkiem, wodą i kaloriami; ćwiczenia; notatki trenera; podsumowanie dnia z paskami postępu i sekcją „Do poprawy”; wydruk podsumowania.
- **📏 Pomiary ciała** — pomiary co 10 dni (lub w dowolnym terminie) z automatycznym porównaniem do poprzedniego pomiaru: ▼ zmiana korzystna, ▲ niekorzystna, ✔ cel osiągnięty; zdjęcia sylwetki z porównaniem „przed / teraz”.
- **📈 Statystyki** — raport tygodniowy (z wydrukiem dla trenera), wykresy parametrów w czasie z linią celu, spożycie z ostatnich 14 dni, analiza pór posiłków vs okna optymalne, korelacje waga–spożycie, tabela realizacji celów.
- **🎯 Droga do celu** — pasek postępu wagi z prognozą daty osiągnięcia celu na podstawie dotychczasowego tempa.
- **🍎 Baza produktów** — zapisane produkty/posiłki dodawane do dziennika jednym kliknięciem (⭐ zapisuje wpis z dziennika do bazy).
- **💧 Szybka woda** — pływający przycisk dodający wypitą wodę (100–1000 ml) z automatycznym przypisaniem do posiłku wg godziny.
- **🍽️ Szybkie jedzenie** — drugi pływający przycisk: dodanie posiłku jednym kliknięciem z bazy produktów albo nowej pozycji z makro (białko/woda/kcal) z opcją zapisania jej w bazie.
- **😴 Sen** — zasnięcie i pobudka z datą i godziną, automatyczne liczenie czasu snu (także przez północ), edytowalny cel (domyślnie 7 h/noc), analiza: wykres 14 dni z linią celu, średnia/najdłuższy/najkrótszy sen, sen w podsumowaniu dnia, „Do poprawy” i raporcie tygodniowym.
- **🏋️ Ćwiczenia** — start/koniec z automatycznym liczeniem czasu (także przez północ), przycisk ▶/⏹ „trening na żywo”, kategorie aktywności, intensywność 1–5, szacunek spalonych kalorii (MET × intensywność × waga × czas), bilans dnia (zjedzone − spalone), cel tygodniowy (minuty i treningi), passa dni z ruchem, wykres minut/tydzień i rozkładu kategorii, ruch w korelacjach i raporcie tygodniowym.
- **✅ Nawyki dnia** — własne odhaczane nawyki (definiowane w profilu) ze skutecznością % z 30 dni i passą.
- **📅 Raport miesięczny** — tygodnie miesiąca obok siebie, porównanie miesiąc do miesiąca, średnia krocząca wagi, wydruk dla trenera.
- **💾 Kopia zapasowa** — eksport i import wszystkich danych (łącznie ze zdjęciami) do pliku JSON; dodatkowo eksport CSV (dziennik + pomiary) do Excela/Arkuszy Google.
- **🌙 Tryb ciemny** — automatyczny, według ustawień systemu/telefonu.
- **📱 PWA** — aplikację można zainstalować na telefonie (Dodaj do ekranu głównego); działa offline.

## Automatyczna synchronizacja

Skrypt `autosync.ps1` (uruchamiany przez Harmonogram zadań Windows co 5 minut) automatycznie zatwierdza i wysyła każdą zmianę w tym folderze na GitHub.

