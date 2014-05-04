{% from "ssl.jinja" import ssl_ciphers with context %}

postgres:
  minor_version: 9.3
  ssl:
    disabled: false
    ciphers: '{{ ssl_ciphers }}'
