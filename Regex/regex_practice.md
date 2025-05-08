<h2>TASK 1.</h2>

The Mystery of Regexland – The Code Leak
On the morning of December 9, 2024 at 07:32, a strange email arrived in the system admin’s inbox, from the address sarah.connor@skynetcorp.com. The subject: "Someone accessed the main terminal – immediate inspection required!"

Several suspicious IP addresses showed up in the log file, including:

192.168.1.100

10.0.0.42

172.16.0.23

Access was attempted by a user called T-800_Megfigyelo007, a total of 5 times. The last attempt was at 08:13, using the password: Skynet@2025!.

During the events, a document was also uploaded: secret_doc_final_v3.pdf.
The uploader left only this message behind: "find the solution at Coordinates: [N 47° 29.123', E 19° 03.456']"

According to the security system log, two other accounts also showed activity on that same day:

neo.matrix@reality.net (login: 09:44)

trinity_333@zion.org (login: 09:45)

The system also logged the devices’ MAC addresses:

00:1B:44:11:3A:B7

3C:07:54:98:EF:2A


Solutions:
1. \b[\w\.-]+@[\w\.-]+\.\w+\b - email addresses

2. \b(?:\d{1,3}\.){3}\d{1,3}\b - ip addresses

3. \b\d{2}:\d{2}\b - hours

4. \b\w+\.pdf\b - pdf file names

5. \[\w \d{2}° \d{2}.\d{3}', \w \d{2}° \d{2}.\d{3}'\] - coordinates

6. \b(?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}\b - MAC addresses



<h2>TASK 2.</h2>

2025-04-01 10:15 - user: tommy99 ordered a pizza: Margherita (ID: 34812)
2025-04-01 10:18 - user: lisa.b ordered a pizza: Pepperoni (ID: 34813)
2025-04-01 10:19 - user: tommy99 sent feedback: "too cheesy"
2025-04-01 11:01 - user: frank_the_tank ordered a pizza: Hawaiian (ID: 34814)
2025-04-01 11:03 - user: lisa.b sent feedback: "perfect as always"
2025-04-01 11:09 - user: tommy99 ordered a pizza: Quattro Formaggi (ID: 34815)


1. select dates : \b\d{4}-\d{2}-\d{2}\b
2. select usernames: (?<=user: )[\w\.]+
3. pizza ids: (?<=ID: )\d+
4. feedbacks: "[^"]+"


<h2>TASK 3.</h2>
Error 404: Not Found
User "admin123" logged in at 12:07
Contact us at support@regexland.io or call 06-30-123-4567
Product ID: #A9F3B
Version: v2.14.7-beta


1. all the times: \b\d{2}:\d{2}
2. email: \b[\w.-]+@[\w\.]+\.\w+\b
3. phone: \b\d{2}-\d{2}-\d{3}-\d{4}\b
4. version num: v[\d.]+(?:-[a-z]+)?
5. username between " ": "([^"]+)"


<h2>TASK 4.</h2>

INFO: Job started
INFO: Processed 25 items
ERROR: Invalid user input
WARNING: Disk almost full
INFO: Job completed successfully
User: admin42
User: levi_dev
Login time: 08:45

1. stars with error: ^ERROR: .*
2. ends with: .*successfully$
3. users: (?<=User: )\w+
4. times after 'Login time: ': \b(?<=Login time: )\d{2}:\d{2}


<h2>TASK 5.</h2>
INFO: Backup started
User: viktor_88
Backup file: daily_2025-05-06.zip
Login time: 07:59
ERROR: File not found
User: sarah.connor
Login time: 08:02
INFO: Backup completed successfully

1. starts with info: ^INFO: .*
2. end with: .* successfully$
3. users: (?<=User: )[\w.]+
4. times: (?<=Login time: )\d{2}:\d{2}



<h2>TASK 6.</h>

ALERT: Unauthorized access attempt
User: root_admin
Access time: 03:14
ALERT: Firewall rule updated
User: guest23
Access time: 04:01
INFO: Routine check complete
Backup created: backup_2025-05-07.zip
ALERT: System override engaged
System status: CRITICAL

1. ^ALERT: .*
2. \w+\.zip
3. (?<=User: )[\w.]+
4. (?<=Access time: )\d{2}:\d{2}
5. .*critical$



<h2>TASK 7.</h>
TASK: fix memory leak
ASSIGNED TO: bence_the_dev
Status: in_progress
Deadline: 2025-05-08
TASK: update documentation
ASSIGNED TO: zsuzsa.doc
Status: done
Deadline: 2025-05-10
TASK: security audit
ASSIGNED TO: admin@cybersec.io
Status: pending_review
Deadline: 2025-05-12


1. ^TASK:.*
2. (?<=Deadline: )[\d-]+ || vagy helyesebben: (?<=Deadline: )\d{4}-\d{2}-\d{2}
3. (?<=ASSIGNED TO: )[\w.@]+
4. .*done$ || vagy: .*?done$
5. [\w]+@[\w.]+\.(com|io|hu) (ezt azért írtam így, hogy tuti legyen a végén egy ilyen mert egy doksiba csinálom az összes feladatot és észrevettem, hogy megtalál olyat is, ahol nincs .com vagy .io)



<h2>TASK 8.</h>

Name: Zsolt, Age: 29, Email: zsolt.dev@techmail.com
Name: Éva, Age: 34, Email: eva_92@cyberspace.io
Name: Bálint, Age: 41, Email: balint@legacy.hu
Talk: "Intro to Cyber Hygiene", Start: 10:00, End: 10:45
Talk: "AI Tools in DevOps", Start: 11:00, End: 11:30
Talk: "Legacy Systems & Refactoring", Start: 11:45, End: 12:30


1. (?<=Name: )[\wéÉáÁ]+
2. Name: ([\wÁÉÍÓÖŐÚÜŰáéíóöőúüű]+), Age: (\d+)
3. [\w\.-]+@[\w\.-]+\.com
4. (?<=Talk: ").*(?!") 
5. Talk: "([^"]+)", Start: (\d{2}:\d{2})



<h2>TASK 9.</h>

Event: Login
User: nora88
Timestamp: 2025-05-08 08:01
IP: 192.168.0.101
Status: success

Event: Password Reset
User: admin_root
Timestamp: 2025-05-08 08:15
IP: 10.0.0.42
Status: failed

Event: Login
User: zsombi.dev
Timestamp: 2025-05-08 08:19
IP: 172.16.1.1
Status: success


1. ^Status: success
2. (?<=IP: )[\d.]+ - (?<=IP: )\d{1,3}(?:\.\d{1,3}){3}
3. (?<=User: )[\w\.]+
4. (?<=Event: ).+
5. (?<=Timestamp: )\d{4}-\d{2}-\d{2} 08:\d{2}