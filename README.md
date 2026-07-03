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
- **💾 Kopia zapasowa** — eksport i import wszystkich danych (łącznie ze zdjęciami) do pliku JSON.
- **📱 PWA** — aplikację można zainstalować na telefonie (Dodaj do ekranu głównego); działa offline.

## Automatyczna synchronizacja

Skrypt `autosync.ps1` (uruchamiany przez Harmonogram zadań Windows co 5 minut) automatycznie zatwierdza i wysyła każdą zmianę w tym folderze na GitHub.

