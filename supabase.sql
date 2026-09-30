-- Einmal im Supabase SQL-Editor ausführen.
create table if not exists public.docs (
  user_id    uuid not null default auth.uid() references auth.users(id) on delete cascade,
  path       text not null,
  data       jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, path)
);

alter table public.docs enable row level security;

drop policy if exists "Nur eigene Einträge" on public.docs;
create policy "Nur eigene Einträge" on public.docs
  for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

-- Live-Sync zwischen Mac und iPhone
alter publication supabase_realtime add table public.docs;
