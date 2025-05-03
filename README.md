# Elm with webpack 5 and taiwindcss 4 Starter Template

I stopped using this template and i am using indeed
[elm with vite 6 and tailwindcss 4 starter template](https://github.com/stratis-vip/elm-vite-tailwindcss)

## This template is using

* webpack 5.99.7
* tailwindcss/postcss 4.1.4
* elm 0.19.1
* FlyonUI 2.1.0

Also, is configured to bundle images from src/images folder

Tree is like this

```text
.
├── dist/
│   ├── favicon.ico
│   ├── images
│   │   └── placeholder.png
│   ├── index.html
│   └── main.bundle.js
├── elm.json
├── src/
│   ├── images/
│   │   └── placeholder.png
│   ├── index.js
│   ├── Main.elm
│   └── style.css
├── package-lock.json
├── package.json
├── postcss.config.js
├── README.md
└── webpack.config.js
```

## Instructions

1. Clone the git
2. Run `elm reactor` to download all packages (if needed)
3. Run `npm i`  to install all other dependencies
4. `npm start` run the webpack-dev-server.
5. Change the `src/images/favicon.ico` with your favicon.

## References

### CSS - Bundler - UI

* [Tailwindcss 4 documentation](https://tailwindcss.com/docs/installation/using-postcss)
* [Webpack 5 documentation](https://webpack.js.org/concepts/)
* [Flyon documentation](https://flyonui.com/docs/getting-started/quick-start/)

### Elm

* [Elm guides](https://guide.elm-lang.org/)
* [Elm packages](https://package.elm-lang.org/)
* [Ryan Haskell's excellent "Welcome to elm" videos on youtube](https://www.youtube.com/playlist?list=PLuGpJqnV9DXq_ItwwUoJOGk_uCr72Yvzb)
