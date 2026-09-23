# SSH Login Risk Analyzer

A Bash-based authentication security analysis tool that evaluates
failed login activity and assigns a security severity level.

## Detection Rules

- Root user OR more than 10 failed attempts -> CRITICAL
- Admin user AND more than 5 failed attempts -> HIGH
- More than 3 failed attempts -> MEDIUM
- Otherwise -> LOW

## Security Use Case

The project demonstrates basic authentication-risk detection and
security decision automation using Bash.

## Technologies

- Bash
- Linux
- Vim

## Future Improvements

- Parse /var/log/auth.log
- Detect repeated source IPs
- Add time-based analysis
- Generate security reports
- Add alerting
