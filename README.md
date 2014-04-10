miniconda
=========

Installs the miniconda python distribution from [Continuum Analytics](http://continuum.io/).

Requirements
------------

None

Role Variables
--------------

# Setting the install directory
miniconda_home: /miniconda

Dependencies
------------

None

Example Playbook
-------------------------

    - hosts: miniconda
      remote_user: vagrant
      sudo: yes
      roles:
         - { role: nicholsn.miniconda, miniconda_home: /miniconda }

License
-------

Apache 2.0

Author Information
------------------

Nolan Nichols <nolan.nichols@gmail.com>
