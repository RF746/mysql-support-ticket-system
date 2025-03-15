# MySQL Support Ticket System 🚀

📌 Overview
This project is a cloud-hosted MySQL database that powers a Support Ticket System, allowing companies to track customer issues, ticket resolutions, and assigned engineers. It is deployed on AWS RDS MySQL, providing a scalable, high-availability solution for real-time support tracking.

📌 Technologies Used
Database: MySQL (AWS RDS)
Cloud Provider: AWS RDS Free Tier
Query Execution: MySQL Workbench & MySQL CLI
Security: VPC Security Groups, IAM Authentication
📌 Features
✅ Customers Table → Stores customer details
✅ SupportTickets Table → Tracks issue reports & assigned engineers
✅ Cloud Deployment → Database runs on AWS RDS MySQL
✅ Optimized Queries → Efficient joins & indexing for performance
✅ Secure Database Access → Configured with VPC rules & IAM

📌 How to Connect to AWS RDS
Install MySQL Workbench
Connect to AWS RDS:
Copy code
Hostname: support-ticket-system.cwh2e0s6kxm9.us-east-1.rds.amazonaws.com
Port: 3306
Username: admin
Password: yourpassword

Run the SQL scripts to set up the database:
sql
Copy code
SOURCE database_setup.sql;
SOURCE insert_data.sql;
SOURCE queries.sql;

📌 Sample Queries

Find all open tickets:
sql
Copy code
SELECT * FROM SupportTickets WHERE status = 'Open';

Join customers & tickets:
sql
Copy code
SELECT SupportTickets.ticket_id, Customers.name, Customers.email, SupportTickets.issue, SupportTickets.status
FROM SupportTickets
JOIN Customers ON SupportTickets.customer_id = Customers.customer_id;