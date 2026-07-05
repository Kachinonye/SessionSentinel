# 👥 SessionSentinel — Linux User Session Monitoring & Login Audit Tool

**SessionSentinel** is a Bash-based Linux user session monitoring utility that helps administrators track active user sessions, SSH connections, login history, and privileged account activity.

Developed as a practical Linux administration and security project, SessionSentinel provides real-time visibility into user access patterns and assists with routine security monitoring and system auditing.

---

## ✨ Features

* 👤 Lists active user sessions
* 🔐 Monitors SSH login activity
* 📜 Displays recent user login history
* ⚡ Tracks recent `sudo` usage
* 🚨 Alerts when specified users (such as `root`) are logged in
* 📝 Generates timestamped monitoring logs
* 🐧 Compatible with most Linux distributions

---

## 📂 Project Structure

```text
SessionSentinel/
├── monitor-session.sh
├── logs/
└── README.md
```

> **Recommended:** Consider renaming `monitor-session.sh` to `session-sentinel.sh` or `sessionsentinel.sh` so it matches the repository branding.

---

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/Kachinonye/SessionSentinel.git
```

Navigate to the project directory:

```bash
cd SessionSentinel
```

Make the script executable:

```bash
chmod +x monitor-session.sh
```

---

## ▶️ Usage

Run the monitoring tool:

```bash
./monitor-session.sh
```

SessionSentinel automatically gathers user session information and highlights notable login activity for administrative review.

---

## 📋 Monitoring Capabilities

SessionSentinel currently reports:

* Active user sessions
* Logged-in users
* SSH connections
* Recent login history
* Recent `sudo` activity
* Alerts for monitored privileged accounts

---

## 💼 Skills Demonstrated

This project showcases practical experience with:

* Linux System Administration
* Bash Shell Scripting
* User Session Monitoring
* SSH Administration
* User Activity Auditing
* Security Monitoring
* Log Analysis
* Process Automation
* Technical Documentation

---

## 🎯 Use Cases

SessionSentinel is useful for:

* Linux System Administrators
* Junior DevOps Engineers
* Security Analysts
* Home Lab Environments
* Server Login Auditing
* User Activity Monitoring
* Linux Administration Training

---

## 🔮 Planned Enhancements

Future releases may include:

* Email alert notifications
* HTML session reports
* JSON export
* Login anomaly detection
* Multiple-user watchlists
* Slack and Discord notifications
* Failed login detection
* Configurable monitoring rules

---

## 👨‍💻 Author

**Kachinonye Nmezi**

Junior Linux Administrator | Bash Scripting & Automation Specialist

GitHub: https://github.com/Kachinonye

LinkedIn: https://www.linkedin.com/in/kachinonye-nmezi-74170723b/

---

## 📜 License

Licensed under the MIT License.
