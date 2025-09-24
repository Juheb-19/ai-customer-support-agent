# Setup Guide (Quick)

## 1. Supabase
- Create a new project at https://app.supabase.com
- In SQL Editor, run `supabase/schema.sql`
- Create RLS policies and API keys as needed.

## 2. n8n
- Self-host or use n8n.cloud.
- Import `n8n/workflows/ai-support-workflow.json` via the workflow import UI.
- Set environment variables in n8n for Supabase URL & key, LLM endpoint (OpenAI, Ollama, or local), and messaging API tokens.

Important env variables (examples):
```
SUPABASE_URL=https://xyz.supabase.co
SUPABASE_SERVICE_KEY=eyJ...
LLM_API_URL=https://api.openai.com/v1/chat/completions
LLM_API_KEY=sk-...
WHATSAPP_API_TOKEN=EAA...
TELEGRAM_BOT_TOKEN=123456:ABC-DEF
SMTP_USER=you@example.com
SMTP_PASS=...
```

## 3. Next.js Dashboard (Local)
- cd nextjs
- npm install
- copy `.env.example` to `.env.local` and fill values
- npm run dev

## 4. GitHub
- Create a repo and push the contents of this folder.
```
cd /path/to/ai-customer-support-agent
git init
git add .
git commit -m "Initial commit - AI Customer Support Agent skeleton"
git remote add origin git@github.com:yourusername/yourrepo.git
git push -u origin main
```

