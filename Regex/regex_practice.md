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