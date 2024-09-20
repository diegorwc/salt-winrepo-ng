libreoffice:
  {% for version in ['24.2.6'] %}
  '{{ version }}':
    full_name: 'LibreOffice {{ version }}'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://tdf.c3sl.ufpr.br/libreoffice/stable/{{ version }}/win/x86_64/LibreOffice_{{ version }}_Win_x86-64.msi'
    uninstaller: 'msiexec.exe /x {AB39A2A5-6C29-49BB-87B3-99C1ECE806C0}'
    {% else %}
    installer: 'https://tdf.c3sl.ufpr.br/libreoffice/stable/{{ version }}/win/x86_64/LibreOffice_{{ version }}_Win_x86-64.msi'
    uninstaller: 'msiexec.exe /x {AB39A2A5-6C29-49BB-87B3-99C1ECE806C0}'
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: pt_BR
    reboot: False
  {% endfor %}
