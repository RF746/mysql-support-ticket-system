USE support_ticket_system;

-- Retrieve all customers
SELECT * FROM Customers;

-- Retrieve all support tickets
SELECT * FROM SupportTickets;

-- Find all open tickets
SELECT * FROM SupportTickets WHERE status = 'Open';

-- Find all tickets with customer details
SELECT SupportTickets.ticket_id, Customers.name, Customers.email, SupportTickets.issue, SupportTickets.status
FROM SupportTickets
JOIN Customers ON SupportTickets.customer_id = Customers.customer_id;

-- Update ticket status
UPDATE SupportTickets SET status = 'Resolved' WHERE ticket_id = 1;
