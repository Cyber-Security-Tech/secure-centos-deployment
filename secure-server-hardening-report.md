# 🛡️ Secure CentOS Server Hardening Report

---

## 📌 Project Summary

This project demonstrates secure deployment of a CentOS/Rocky Linux server with:
- Full disk encryption (LUKS)
- CIS-compliant system hardening
- Intrusion protection (Fail2Ban)
- Automated security patching
- Professional security documentation

All configurations follow real-world classified environment standards.

---

## ⚙️ Hardened Features Overview

| Feature                        | Implementation                                              |
|--------------------------------|-------------------------------------------------------------|
| Full Disk Encryption           | LUKS encryption enabled at installation                    |
| Firewall Configuration         | UFW installed, default deny policy, allowed SSH only        |
| SSH Hardening                  | Disabled root login, disabled password authentication      |
| Account Security               | Password complexity enforced, lockouts after failed attempts |
| Intrusion Protection (Fail2Ban) | Installed and configured to block brute-force attacks      |
| System Logging (AuditD)         | AuditD installed, secret file access monitored             |
| Automatic Security Patching    | dnf-automatic configured and enabled via systemd timer      |
| SELinux Enforcement            | SELinux enabled and set to enforcing mode                  |
| Removal of Unnecessary Services | Confirmed telnet and ftp services are not installed         |

---

## 📸 Hardened System Screenshots

### ✨ Disk Encryption Setup
- `luks-boot.png`
- `luks-encryption-status.png`
- `luks-partition-summary.png`
- `luks-summary-of-changes.png`

### ✨ Initial Login and Account Setup
- `first-login.png`
- `ssh_key_generation_success.png`
- `ssh_authorized_keys_setup.png`
- `ssh_key_login_success.png`

### ✨ SSH Hardening
- `ssh_config_hardening.png`
- `disable_root_ssh_login.png`
- `sshd-restart.png`
- `ssh_denied_password_disabled.png`

### ✨ Firewall Setup
- `ufw-default-policy-set.png`
- `ufw-enabled-with-ssh.png`
- `ufw-firewall-status-summary.png`

### ✨ Fail2Ban Intrusion Protection
- `install_fail2ban.png`
- `fail2ban_service_status.png`
- `fail2ban_restart_output.png`
- `fail2ban_enabled.png`
- `fail2ban_status.png`
- `fail2ban-sshd-jail-loaded.png`
- `fail2ban_ssh_config.png`
- `fail2ban_default_config.png`

### ✨ Password Policy and Lockout
- `password-complexity-hardening.png`
- `account-lockout-policy-set.png`

### ✨ AuditD System Logging
- `auditd-installed-and-running.png`
- `auditd-access-log-secretfile.png`
- `auditd-rule-added-secretfile.png`
- `auditd-persistent-rule-loaded.png`

### ✨ SELinux Enforcement
- `selinux-enforcing.png`

### ✨ Automatic Security Updates
- `dnf_auto_updates_enabled.png`

### ✨ Unnecessary Services Removal
- `no_telnet_no_ftp_installed.png`

### ✨ Additional Hardening Steps (Optional)
- `enable_epel_repo.png`
- `authselect-create-profile.png`
- `authselect-current.png`
- `authselect-apply-profile.png`
- `authselect-hardened-oddjob-installed.png`
- `sendmail_enabled.png`
- `sendmail_installed.png`
- `step-ssh-editor-install.png`

---

## 🧐 Why Each Hardening Step Matters

| Hardening Step                  | Reason |
|----------------------------------|--------|
| Full Disk Encryption             | Protects sensitive data at rest from physical theft |
| Firewall Rules                   | Restricts access to authorized services only |
| SSH Hardening                    | Prevents remote root access and password brute-forcing |
| Strong Password Policies         | Reduces risk of simple password attacks |
| Fail2Ban Intrusion Protection    | Automatically blocks suspicious repeated login attempts |
| AuditD File Access Logging       | Tracks unauthorized or suspicious file access |
| SELinux Enforcing Mode           | Enforces mandatory access control over the system |
| Removal of Telnet/FTP            | Eliminates insecure legacy network services |
| Automatic Security Patching      | Ensures vulnerabilities are patched without delay |

---

## 🚀 Final Outcome

This project delivers:
- Full classified-level server deployment with encryption
- Security hardening based on CIS benchmarks
- Automated system security maintenance
- Thorough professional documentation

**This server mirrors real-world classified security standards, demonstrating readiness for system administrator roles in secure environments.**

---

## 💡 Bonus Note: Lockout Policy Realism

Due to aggressive lockout and authentication policies, local account lockouts were successfully triggered, demonstrating real-world consequences of strict security controls. This highlights a true understanding of balancing security enforcement and operational access management.

---

