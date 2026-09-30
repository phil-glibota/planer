# Wochenplaner: restliche Einrichtung

Supabase ist fertig eingerichtet (Projekt „wochenplaner“, Frankfurt, Datenbank,
Sicherheitsregeln, Live-Sync). `config.js` ist schon ausgefüllt.
Übrig sind noch ca. 10 Minuten.

## 1. E-Mail-Bestätigung ausschalten (1 Klick)

Supabase-Dashboard → Projekt **wochenplaner** → **Authentication** →
**Sign In / Providers** → **Email** → „Confirm email“ **aus** → Save.

Sonst schickt Supabase dir beim Konto-Erstellen erst eine Bestätigungs-Mail.

## 2. Website auf GitHub Pages

1. **github.com** → **New repository** → Name `planer` → **Public** → Create.
2. **uploading an existing file** → alle Dateien aus dem Ordner `planer-app`
   reinziehen (index.html, config.js, sw.js, manifest.webmanifest, 3 PNGs) → **Commit changes**.
3. Repo → **Settings** → **Pages** → Source **Deploy from a branch** →
   Branch **main**, Ordner **/ (root)** → Save.
4. Nach 1–2 Minuten: `https://DEIN-GITHUB-NAME.github.io/planer/`

## 3. Konto anlegen und Daten umziehen

1. Die Seite am Mac öffnen → E-Mail + Passwort → **Konto erstellen**.
2. Alte Claude-Version: Einstellungen → **Export erstellen** → Text kopieren.
3. Neue App: Einstellungen → **Daten importieren** → einfügen → Importieren.
4. Danach in Supabase unter Authentication → Sign In / Providers
   **„Allow new users to sign up“ ausschalten**, damit niemand sonst ein Konto anlegt.

## 4. Aufs iPhone

Adresse in **Safari** öffnen → Teilen → **Zum Home-Bildschirm** → App öffnen → einmal anmelden.

## Gut zu wissen

- Kostenlose Supabase-Projekte pausieren nach 7 Tagen ohne Nutzung. Bei
  täglicher Nutzung kein Thema. Falls doch: Dashboard → „Restore project“.
- Updates: neue index.html auf GitHub ersetzen und in `sw.js` `planer-v1`
  auf `planer-v2` hochzählen.
