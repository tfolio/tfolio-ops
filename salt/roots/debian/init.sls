{% if grains['node_type'] == 'vagrant' %}
debian.jessie:
  pkgrepo.managed:
    - humanname: Debian Jessie repository
    - name: deb http://mirrors.kernel.org/debian jessie main contrib
    - dist: jessie
    - file: /etc/apt/sources.list.d/jessie.list
    - require_in:
      pkg:
        - python3.4-dev

/etc/apt/preferences.d/jessie.pref:
  file.managed:
    - source: salt://debian/files/apt_preferences.jessie.conf
    - user: root
    - group: root
    - mode: 644
{% endif %}
