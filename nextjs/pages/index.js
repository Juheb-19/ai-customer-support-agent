import React from 'react';

export default function Home() {
  return (
    <main style={{fontFamily:'Inter, sans-serif', padding:24}}>
      <h1>AI Customer Support Dashboard (Starter)</h1>
      <p>This is a minimal dashboard starter. Connect your Supabase keys in <code>.env.local</code>.</p>
      <p>Features to add:</p>
      <ul>
        <li>Live ticket list</li>
        <li>Message view with reply editor</li>
        <li>Agent assignment</li>
        <li>AI response override / edit</li>
      </ul>
    </main>
  )
}
