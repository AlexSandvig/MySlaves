# KøkkenKassen

React/Vite-app til Zander og Aya med fælles Supabase-synkronisering.

## Login
- Zander: `2663`
- Aya: `1707`
- Admin: `9382`

## 1. Supabase
1. Opret et Supabase-projekt.
2. Åbn SQL Editor og kør `supabase.sql`.
3. Kopiér `.env.example` til `.env`.
4. Indsæt Project URL og publishable/anon key. Brug aldrig service_role key i browseren.

## 2. Lokal kørsel
```bash
npm install
npm run dev
```

## 3. GitHub Pages
1. Push projektet til et GitHub-repository.
2. Kør `npm install` og `npm run deploy` lokalt, eller brug workflowet i `.github/workflows/deploy.yml`.
3. I GitHub: Settings > Pages > Source: GitHub Actions.
4. Tilføj repository secrets `VITE_SUPABASE_URL` og `VITE_SUPABASE_ANON_KEY`.

## Bemærkning om sikkerhed
De firecifrede pinkoder ligger i frontend-koden og er kun en praktisk familielås. Rigtig adgangskontrol kræver Supabase Auth/Edge Functions.
