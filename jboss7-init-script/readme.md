# JBoss 7 Init script

For launching JBoss 7 as service on Red-Hat-based distributions such as Fedora, RHEL, CentOS.

## Requirements

- daemonize (available from EPEL repo: `yum install daemonize`)

## Setup

1. Copy [./jboss7](jboss7) script into `/etc/init.d`.
2. Ensure the script is executable (`chmod +x`).
3. Register it as init script: `chkconfig --add /etc/init.d/jboss7`

## Settings

Following optional settings can be added to file `/etc/sysconfig/jboss7`:

- JBOSS_HOME: Path to JBoss 7 home (default: `/opt/jboss-as-7.1.1.Final`)
- BIND_ADDR: Bind address (default: `127.0.0.1`)
