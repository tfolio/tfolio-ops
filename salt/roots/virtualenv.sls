python-virtualenv:
  {% if grains['node_type'] == 'vagrant' %}
  pkg.installed:
    - fromrepo: jessie
  {% else %}
  pkg.installed
  {% endif %}

/home/{{ grains['username'] }}/virtualenv:
  virtualenv.managed:
    - python: /usr/bin/python3.4
    - use_wheel: True
    - user: {{ grains['username'] }}
    - requires:
      - pkg:
        - python-virtualenv
        - python3.4-dev
