# -*- mode: Just; dtrt-indent-mode: 0; tab-width: 2; standard-indent: 2; -*-

build:
  hugo \
    --baseURL 'https://loganbarnett.github.io/site-dirshum/' \
    --logLevel debug \
    --environment production

serve:
  hugo \
    server \
    --baseURL 'http://localhost:1313/site-dirshum/' \
    --logLevel debug \
    --environment production
