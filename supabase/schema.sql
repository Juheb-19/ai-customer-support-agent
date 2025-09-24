-- Supabase schema for AI Customer Support Agent
create extension if not exists "uuid-ossp";

-- users (customers)
create table if not exists users (
  id uuid default uuid_generate_v4() primary key,
  channel text not null, -- whatsapp / telegram / email
  channel_id text not null, -- phone number, telegram id, or email
  name text,
  created_at timestamptz default now()
);

-- tickets
create table if not exists tickets (
  id uuid default uuid_generate_v4() primary key,
  ticket_code text unique,
  user_id uuid references users(id),
  subject text,
  status text default 'open', -- open / pending / resolved / closed
  priority text default 'normal',
  assigned_to text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- messages
create table if not exists messages (
  id uuid default uuid_generate_v4() primary key,
  ticket_id uuid references tickets(id) on delete cascade,
  user_id uuid references users(id),
  direction text, -- inbound / outbound
  channel text,
  channel_message_id text,
  body text,
  ai_response boolean default false,
  metadata jsonb,
  created_at timestamptz default now()
);

-- agents
create table if not exists agents (
  id uuid default uuid_generate_v4() primary key,
  name text,
  email text,
  role text,
  created_at timestamptz default now()
);

-- audit_logs
create table if not exists audit_logs (
  id uuid default uuid_generate_v4() primary key,
  actor text,
  action text,
  entity text,
  before jsonb,
  after jsonb,
  created_at timestamptz default now()
);

-- settings
create table if not exists settings (
  key text primary key,
  value jsonb
);
