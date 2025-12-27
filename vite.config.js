import { defineConfig } from 'vite'
import { resolve } from 'path'
import { fileURLToPath } from 'url'

const __dirname = fileURLToPath(new URL('.', import.meta.url))

export default defineConfig({
  base: '/chuer/',
  build: {
    outDir: 'dist',
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        doing: resolve(__dirname, 'doing.html'),
        thinking: resolve(__dirname, 'thinking.html'),
        enjoying: resolve(__dirname, 'enjoying.html'),
        people: resolve(__dirname, 'people.html'),
        beyond: resolve(__dirname, 'beyond.html'),
      }
    }
  },
  server: {
    port: 3000,
  }
})

