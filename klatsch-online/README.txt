KLATSCH LOUNGE - ONLINE MENÜ

Dateien:
- index.html = öffentliche Karte
- admin/index.html = geschützter Adminbereich
- config.js = Supabase URL und anon/publishable Key
- supabase-schema.sql = Tabellen und Sicherheitsregeln
- seed-menu.sql = Start-Menü

EINRICHTUNG
1. Ein Supabase-Projekt anlegen.
2. Im SQL Editor zuerst supabase-schema.sql ausführen.
3. Unter Authentication > Users einen Admin mit E-Mail und Passwort anlegen.
4. Die UUID dieses Benutzers kopieren und den kommentierten INSERT in supabase-schema.sql mit dieser UUID ausführen.
5. seed-menu.sql im SQL Editor ausführen.
6. In Project Settings/API die Project URL und den anon/publishable Key kopieren und in config.js eintragen. Niemals den service_role Key in die Webseite eintragen.
7. Den gesamten Ordner in ein GitHub-Repository hochladen.
8. GitHub: Settings > Pages > Deploy from a branch > main > /(root) > Save.
9. Öffentliche Karte: https://BENUTZERNAME.github.io/REPOSITORY/
10. Admin: https://BENUTZERNAME.github.io/REPOSITORY/admin/

Änderungen aus dem Adminbereich werden in derselben Supabase-Zeile gespeichert. Die öffentliche Karte lädt diese Daten und hört zusätzlich auf Aktualisierungen.
