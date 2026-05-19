# Chapter Eight: Covering the Burn

The Akhter brothers engaged in a deliberate cover-up alongside their deletion sequence. This concealment effort began while the databases were still falling. The Statement of Facts documents their attempts to erase evidence and preserve future access. Muneeb Akhter opened an artificial intelligence tool at 4:59 p.m. He typed two queries directly relevant to the cover-up narrative. 

He asked the software how to clear system logs after deleting databases. He subsequently asked how to clear all event logs from a standard server. The tool provided actionable answers. The brothers followed those exact instructions. This exchange demonstrates the cover-up operated as an integral part of the execution phase. Sohaib Akhter watched his brother erase the database backups in real time. 

The brothers targeted both the live databases and the backup repositories. They sought to widen the restoration gap by attacking secondary storage. This strategy increased the likelihood of permanent data loss. A co-conspirator reinstalled the operating systems on both company-issued laptops shortly after the operation. This action overwrote local evidence surviving the initial log-clearing steps. 

This post-operation cleanup suggests a division of labor extending beyond the initial window. Sufficient digital evidence survived these efforts to reconstruct the breach. The query logs recording the questions and software responses remained in the system. These logs provided a timestamped trail of criminal intent. Federal agents recovered a portable drive during the December arrest. 

This drive contained thousands of complaint files and taxpayer records staged for exfiltration. The hardware also contained operational metadata including database schemas and interface endpoints. Muneeb retained his physical security badge after departing the facility. He utilized that card during a March attempt to regain entry to federal buildings. 

The cover-up highlights a critical limitation in the federal monitoring architecture. Organizations frequently lack the retention policies necessary to detect low-volume insider activity. Determined insiders can erase their tracks at the source when logging systems lack tamper-proof controls. Backups provide zero security when attackers access both primary and secondary storage. 

Federal contractors must implement immutable audit logs to close this structural gap. Administrators must deploy cryptographically signed logs resisting alteration by privileged users. The architecture requires strict separation of duties. Individuals executing destructive commands must never possess the ability to modify the corresponding audit logs. 

Contractors must maintain encrypted backups completely isolated from the production environment. Security teams must deploy file integrity monitoring on critical system configurations to detect unauthorized operating system reinstalls. The Akhter case demonstrates the severe cost of assuming basic logging provides sufficient internal protection.