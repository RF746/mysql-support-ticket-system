USE support_ticket_system;

INSERT INTO Customers (name, email) VALUES 
('John Doe', 'john.doe@example.com'),
('Alice Smith', 'alice.smith@example.com');

INSERT INTO SupportTickets (customer_id, issue, assigned_engineer) VALUES 
(1, 'Cannot connect to VPN', 'Sarah Johnson'),
(2, 'Forgot account password', 'Mike Brown');

