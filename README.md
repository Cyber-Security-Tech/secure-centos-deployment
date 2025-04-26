# 🛡️ Secure CentOS Server Deployment

---

## 📄 Overview

This project demonstrates the deployment of a classified-level secure Rocky Linux server. It features:
- Full disk encryption (LUKS)
- CIS-compliant hardening
- Intrusion protection (Fail2Ban)
- Audit logging (AuditD)
- Automated security patching
- Professional system documentation

The goal was to simulate real-world Linux system administration in a secure, classified environment.

---

## ✨ Features

- 🔐 Full Disk Encryption (LUKS)
- ⚔️ Firewall (UFW) default-deny configuration
- 🔒 SSH Hardening (no root login, password login disabled)
- 🤒 Fail2Ban Intrusion Protection
- 💡 Password complexity enforcement and lockout policies
- 🔧 AuditD File Access Monitoring
- 🔠 SELinux Enforcing Mode
- 🚀 Automatic Security Updates
- 🔍 Validation that Telnet/FTP are not installed
- 🌐 Automated Patch Management Script

---

## 🚲 Tools Used

- Rocky Linux 9.5
- LUKS Encryption
- firewalld / UFW
- OpenSSH
- Fail2Ban
- AuditD
- SELinux
- dnf-automatic
- Bash scripting

---

## 🔄 Folder Structure

```
secure-centos-server/
├── screenshots/
├── scripts/
│   └── patch_system.sh
├── reports/
├── secure-server-hardening-report.md
├── setup-guide.md
├── hardening-checklist.yml
└── README.md
```

---

## 📅 How to Set Up

1. Follow the [Setup Guide](./setup-guide.md) to install Rocky Linux with LUKS encryption.
2. Apply all post-installation hardening steps.
3. Use the provided patch script to manage security updates.

---

## 💡 Screenshots

Key system states and hardening results are captured in the [screenshots/](./screenshots) folder, including:
- Disk encryption setup
- Firewall configuration
- Fail2Ban status
- SELinux enforcing
- AuditD running
- Auto-patching enabled

---

## 🔬 What I Learned

- How to securely deploy a Linux server from scratch
- How to apply CIS-level hardening techniques manually
- How to automate patching and maintenance tasks
- How to document security operations professionally for audits and job portfolios
- How aggressive security policies can impact usability (real-world experience!)

---

## 🚀 Future Improvements

- Automate full CIS scans and scoring using OpenSCAP
- Centralize audit logs to a remote syslog server
- Integrate multi-factor authentication (MFA) for SSH
- Implement Ansible or Terraform for automated server builds

---

## 📢 Final Outcome

This project showcases real-world Linux system administration skills with a focus on:
- Secure server deployment
- Security best practices
- Automation
- Professional documentation

> "Amateurs hack systems. Professionals secure systems." — Unknown

---

## 💪 Special Note

Lockout policies during hardening successfully triggered real-world access issues, demonstrating the importance of balancing security enforcement with operational accessibility.

---

