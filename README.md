# docker-debian-systemd

Debian *slim* image with **systemd** aimed for using with Ansible Molecule
testing.

Only Debian 9 stretch image, PRs are welcome.

Based on [jrei/systemd-debian](https://hub.docker.com/r/jrei/systemd-debian/)

## Usage

### Standalone

Run it like this

    docker run -d --privileged --name systemd-debian -v /sys/fs/cgroup:/sys/fs/cgroup:ro alexdzyoba/debian-systemd:9

### With molecule

Configure this image in molecule.yml `platforms` section:

    platforms:
      - name: instance
        image: alexdzyoba/debian-systemd:9
        privileged: True
        volumes:
          - /sys/fs/cgroup:/sys/fs/cgroup:ro
        command: /sbin/init

