const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'freelancers-dark-blue': '#056BF1',
        'freelancers-mid-blue': '#0583F2',
        'freelancers-light-blue': '#0697F2',
        'freelancers-light-orange': '#F29F04',
        'freelancers-dark-orange': '#F28705',
        'freelancers-dark-text': '#0A4490',
        'freelancers-paragraph': '#40526A',
        'freelancers-white-background': '#F9F9FC',
        'freelancers-text-gray': '#6A7D96',
      },
    },
    plugins: [
      require('@tailwindcss/forms'),
      require('@tailwindcss/typography'),
      require('@tailwindcss/container-queries'),
    ],
  },
};
