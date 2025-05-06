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




TASKS:
1. \b[\w\.-]+@[\w\.-]+\.\w+\b - email addresses

2. \b(?:\d{1,3}\.){3}\d{1,3}\b - ip addresses

3. \b\d{2}:\d{2}\b - hours

4. \b\w+\.pdf\b - pdf file names

5. \[\w \d{2}° \d{2}.\d{3}', \w \d{2}° \d{2}.\d{3}'\] - coordinates

6. \b(?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}\b - MAC addresses