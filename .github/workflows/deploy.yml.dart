name: Publish to GitHub Pages

on:
push:
branches: [ master ]

jobs:
build:
runs-on: ubuntu-latest

steps:
- uses: actions/checkout@v2
- uses: subosito/flutter-action@v1
- uses: erickzanardo/flutter-gh-pages@v3
// 여기까지는 필수.