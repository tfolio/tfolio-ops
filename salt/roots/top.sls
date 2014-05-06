# vim: set ft=sls ts=2 sts=2 sw=2 et :
base:
  '*':
{%- if grains['os'] == 'Debian' %}
    - debian
{%- endif %}
    - oath-toolkit
    - python
    - virtualenv
    - uwsgi
    - nginx
    - postgres
    - postgres.config
