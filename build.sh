#!/bin/sh
# src/app-body.html 을 GitHub Pages용 index.html 로 감싸는 스크립트
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>[hidden]{display:none!important} body{margin:0} :root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}</style>\n</head>\n<body>\n'
  cat src/app-body.html
  printf '\n</body>\n</html>\n'
} > index.html
