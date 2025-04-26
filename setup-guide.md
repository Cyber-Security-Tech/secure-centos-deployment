# 🛋️ Secure CentOS Server Setup Guide

---

## ✨ Overview

This guide explains how to set up a secure Rocky Linux server with:
- Full disk encryption (LUKS)
- CIS-compliant system hardening
- Automated security patching
- Professional documentation standards

It matches the configuration demonstrated in the `secure-centos-server` project.

---

## 🚲 System Requirements

- VirtualBox (or equivalent hypervisor)
- Rocky Linux 9.5 Minimal ISO
- 2 GB RAM (minimum)
- 20 GB Disk Space
- Internet access for package installations

---

## 👨‍💼 Installation Steps

1. **Download Rocky Linux Minimal ISO**
   - [https://rockylinux.org/download](https://rockylinux.org/download)

2. **Create a New Virtual Machine**
   - Type: Linux
   - Version: Red Hat (64-bit)
   - Memory: 2048 MB
   - Disk: 20 GB dynamically allocated

3. **Attach the ISO and Boot the VM**

4. **Select Language and Keyboard Layout**

5. **Set Installation Destination**
   - Enable **Encrypt my data** (LUKS)
   - Use manual partitioning:
     - `/boot` (unprotected)
     - LUKS encrypted volume group containing `/` and `swap`

6. **Set Root Password**
   - Lock root login after installation.

7. **Create Limited User (devops_admin)**
   - Make user an administrator.

8. **Configure Network Settings**
   - Enable the primary network interface.

9. **Begin Installation**

10. **Reboot and Unlock the Disk with Passphrase**

---

## ⚔️ Post-Installation Hardening Steps

### 1. Secure SSH Configuration
- Disable root login
- Enforce SSH key authentication (optional)

### 2. Install and Configure UFW
- Deny all incoming by default
- Allow SSH only

### 3. Install and Configure Fail2Ban
- Protect SSH from brute-force attacks

### 4. Enforce Strong Password Policies
- Configure PAM for complexity and lockout

### 5. Enable AuditD
- Monitor file access and security events

### 6. Enable SELinux
- Set to `Enforcing`

### 7. Enable Automatic Security Patching
- Install and configure `dnf-automatic`

### 8. Confirm Telnet and FTP Are Not Installed

### 9. Create Automated Security Patch Script
- Located at `scripts/patch_system.sh`

---

## 🚷 Usage Instructions

### Run Patch Script Manually

```bash
cd /path/to/secure-centos-server/scripts/
sudo ./patch_system.sh
```

### Patch Script Behavior
- Updates and patches system
- Logs output to `/var/log/patching/`
- Indicates if reboot is needed

---

## 🚀 Recommended Additional Steps (Optional)

- Set up automatic backups
- Deploy centralized logging (e.g., with Rsyslog)
- Integrate OpenSCAP scans for compliance reports
- Harden kernel parameters (sysctl)

---

## 📊 Folder Structure Overview

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

## 📢 Final Notes

This setup guide ensures that a Rocky Linux server is deployed using classified-level security standards, demonstrating professional IT administration, system hardening, and proactive security maintenance.

---

