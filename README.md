miniconda
========

Installs the miniconda python distribution.

Requirements
------------

None

Role Variables
--------------

None

Dependencies
------------

None

Example Playbook
-------------------------

    - hosts: miniconda
      roles:
         - { role: nicholsn.miniconda, miniconda_home: /miniconda }

License
-------

Apache

Author Information
------------------

Nolan Nichols <nolan.nichols@gmail.com>
