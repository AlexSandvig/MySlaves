create table if not exists public.kitchen_app (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.kitchen_app enable row level security;

create policy "Family can read" on public.kitchen_app
for select to anon using (id = 'familien-larsen');

create policy "Family can insert" on public.kitchen_app
for insert to anon with check (id = 'familien-larsen');

create policy "Family can update" on public.kitchen_app
for update to anon using (id = 'familien-larsen')
with check (id = 'familien-larsen');

alter publication supabase_realtime add table public.kitchen_app;
