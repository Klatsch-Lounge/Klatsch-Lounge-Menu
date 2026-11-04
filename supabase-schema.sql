-- 1) Im Supabase SQL Editor ausführen.
create table if not exists public.menu_data (
  id integer primary key,
  content jsonb not null,
  updated_at timestamptz not null default now()
);
create table if not exists public.admin_users (
  user_id uuid primary key references auth.users(id) on delete cascade
);
alter table public.menu_data enable row level security;
alter table public.admin_users enable row level security;
revoke all on public.menu_data from anon, authenticated;
grant select on public.menu_data to anon, authenticated;
grant update on public.menu_data to authenticated;
create policy "menu public read" on public.menu_data for select to anon, authenticated using (true);
create policy "admin can update menu" on public.menu_data for update to authenticated
using (exists(select 1 from public.admin_users a where a.user_id=auth.uid()))
with check (exists(select 1 from public.admin_users a where a.user_id=auth.uid()));
-- 2) Nach dem Erstellen des Admin-Benutzers dessen UUID einsetzen und ausführen:
-- insert into public.admin_users(user_id) values ('HIER_ADMIN_USER_UUID');
-- 3) Die Datei seed-menu.sql danach ausführen.
