-- Create Invoices table
CREATE TABLE IF NOT EXISTS Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

-- Create InvoiceItems table
CREATE TABLE IF NOT EXISTS InvoiceItems (
    ItemID INT PRIMARY KEY,
    InvoiceID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Price NUMERIC(10,2) NOT NULL,
    FOREIGN KEY (InvoiceID) REFERENCES Invoices(InvoiceID)
);

-- Sample data
INSERT INTO Invoices (InvoiceID, CustomerName)
VALUES (1, 'John Doe');

INSERT INTO InvoiceItems (ItemID, InvoiceID, Name, Price)
VALUES (1, 1, 'Widget A', 19.99);
