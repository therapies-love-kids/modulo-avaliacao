import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import Root from './root.tsx'

const rootElement = document.getElementById('root') as HTMLElement
createRoot(rootElement).render(
  <StrictMode>
    <Root />
  </StrictMode>
)
