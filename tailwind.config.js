/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{html,js,jsx,ts,tsx}",
    "./*.html"
  ],
  theme: {
    extend: {
      fontFamily: {
        'mono': ['Roboto Mono', 'monospace'],
        'sans': ['Nunito', 'sans-serif'],
        'display': ['Lexend Giga', 'sans-serif'],
      },
      colors: {
        'peach': '#ffe6d5',
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}

