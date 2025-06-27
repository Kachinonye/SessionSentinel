#!/bin/bash

# ------------------------------
# Session Monitor Script
# ------------------------------

# Log file named by date
LOGFILE="session_log_$(date +%F).log"

# Users to track for alerts
WATCHED_USERS=("root" "admin")

# Start log
echo "🧾 SESSION MONITOR REPORT - $(date)" > "$LOGFILE"
echo "-----------------------------------------" >> "$LOGFILE"

# Currently logged-in users
echo -e "\n👤 LOGGED-IN USERS:" >> "$LOGFILE"
who >> "$LOGFILE"

# User session details
echo -e "\n📊 USER SESSIONS (via w):" >> "$LOGFILE"
w >> "$LOGFILE"

# Last login attempts
echo -e "\n🕑 RECENT LOGINS:" >> "$LOGFILE"
last -n 5 >> "$LOGFILE"

# Active SSH sessions
echo -e "\n🔐 SSH SESSIONS:" >> "$LOGFILE"
who | grep -i ssh >> "$LOGFILE" || echo "No SSH sessions." >> "$LOGFILE"

# Sudo activity
echo -e "\n🛡️ SUDO ACTIVITY (last 5):" >> "$LOGFILE"
journalctl _COMM=sudo | grep -i "COMMAND=" | tail -n 5 >> "$LOGFILE" 2>/dev/null || echo "No sudo usage." >> "$LOGFILE"

# Alert on specific users
echo -e "\n🚨 MONITORED USER ALERTS:" >> "$LOGFILE"
for user in "${WATCHED_USERS[@]}"; do
  if who | grep -q "^$user\b"; then
    echo "⚠️  ALERT: '$user' is logged in!" >> "$LOGFILE"
  else
    echo "✔️  '$user' is not logged in." >> "$LOGFILE"
  fi
done

echo -e "\n✅ Session monitoring complete. Log saved to $LOGFILE"

