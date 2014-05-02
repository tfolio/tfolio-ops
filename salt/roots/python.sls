{% if grains['os'] == 'Ubuntu' %}
deadsnakes.ppa:
  pkgrepo.managed:
    - humanname: Deadsnakes PPA
    - name: deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu precise main
    - dist: precise
    - file: /etc/apt/sources.list.d/deadsnakes.list
    - keyid: DB82666C
    - keyserver: keyserver.ubuntu.com
    - require_in:
      pkg:
        - python3.4-dev
{% endif %}

python3.4-dev:
  pkg.installed
