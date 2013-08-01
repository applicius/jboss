# JBoss 4 Init script

For launching JBoss 4 as service on Red-Hat-based distributions such as Fedora, RHEL, CentOS.

## Requirements

- daemonize (available from EPEL repo: `yum install daemonize`)

## Setup

1. Copy [./jboss4](jboss4) script into `/etc/init.d`.
2. Ensure the script is executable (`chmod +x`).
3. Register it as init script: `chkconfig --add /etc/init.d/jboss4`

## Settings

Following optional settings can be added to file `/etc/sysconfig/jboss4`:

- JBOSS_HOME: Path to JBoss 4 home (default: `/opt/jboss-4.2.3.GA`)
- BIND_ADDR: Bind address (default: `127.0.0.1`)
