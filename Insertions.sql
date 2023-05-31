DELETE FROM Rooms;
DELETE FROM Customers;
DELETE FROM Servants;
DELETE FROM Bookings;
DELETE FROM Payments;
DELETE FROM Expense;
DELETE FROM Tickets;
DELETE FROM Reclamations;
DELETE FROM Cancellations;

INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (1, 'Single', 30, 1, true);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (2, 'Double', 50, 2, true);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (3, 'Single', 40, 1, false);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (4, 'Suite', 100, 2, true);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (5, 'Double', 60, 2, false);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (6, 'Single', 35, 1, true);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (7, 'Double', 55, 2, true);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (8, 'Single', 45, 1, false);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (9, 'Suite', 120, 2, true);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (10, 'Double', 65, 2, false);
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, MaxPersons, Looked)
VALUES (11, 'Single', 50, 1, true);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (1, 'George', 'Turcu', 'gturcu1@gmail.com', '0770 992 649', 'Romania', '27.01.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (2, 'Ana', 'Popescu', 'anapopescu@example.com', '0721 123 456', 'Romania', '28.02.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (3, 'John', 'Smith', 'johnsmith@example.com', '+1 555 123 4567', 'United States', '31.01.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (4, 'Maria', 'Gonzalez', 'mariagonzalez@example.com', '+34 123 456 789', 'Spain', '31.03.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (5, 'Mohammed', 'Ali', 'mohammedali@example.com', '+971 50 1234567', 'United Arab Emirates', '31.01.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (6, 'Sophie', 'Lefebvre', 'sophielefebvre@example.com', '+33 6 12 34 56 78', 'France', '12.05.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (7, 'Alex', 'Johnson', 'alexjohnson@example.com', '+44 7123 456789', 'United Kingdom', '03.04.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (8, 'Luis', 'Rodriguez', 'luisrodriguez@example.com', '+52 55 1234 5678', 'Mexico', '22.03.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (9, 'Emily', 'Wong', 'emilywong@example.com', '+86 10 1234 5678', 'China', '01.06.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (10, 'Hans', 'Schmidt', 'hansschmidt@example.com', '+49 1234 567890', 'Germany', '07.04.2023');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Country, RegTime)
VALUES (11, 'Isabella', 'Ricci', 'isabellaricci@example.com', '+39 02 1234 5678', 'Italy', '16.03.2023');

INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (1, 1, 'Daniel', 'Macovei', '0743 112 652');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (2, 2, 'Maria', 'Ionescu', '0732 987 654');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (3, 1, 'Alexandru', 'Popa', '0765 456 789');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (4, 3, 'Elena', 'Vasilescu', '0721 555 888');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (5, 2, 'Andrei', 'Mihai', '0733 111 222');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (6, 4, 'Gabriela', 'Dumitrescu', '0744 222 333');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (7, 3, 'Ion', 'Popescu', '0722 888 999');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (8, 5, 'Ana', 'Constantinescu', '0734 999 111');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (9, 4, 'Mihai', 'Stoica', '0766 777 888');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (10, 6, 'Cristina', 'Gheorghe', '0723 654 321');
INSERT INTO Servants (ServantID, RoomNumber, FirstName, LastName, Phone)
VALUES (11, 5, 'Andreea', 'Marin', '0755 444 333');

INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1000, '28.05.2023', '02.06.2023', NULL, 1, 1, true, 6, '28.12.2022', 'Room with refrigerator');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1001, '21.05.2023', '31.05.2023', 2, 2, 2, false, 10, '10.02.2023', 'Quiet room, high floor');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1002, '10.03.2023', '14.03.2023', 3, 3, 3, true, 4, '01.03.2023', 'Extra towels required');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1003, '20.04.2023', '25.04.2023', 4, 4, 4, true, 5, '15.04.2023', 'Early check-in requested');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1004, '05.06.2023', '10.06.2023', 5, 5, 5, false, 5, '01.06.2023', 'Late checkout requested');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1005, '18.07.2023', '24.07.2023', 6, 6, 6, true, 6, '10.07.2023', 'Extra bed required');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1006, '01.09.2023', '05.09.2023', NULL, 7, 7, false, 4, '28.08.2023', 'Early breakfast requested');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1007, '10.10.2023', '15.10.2023', 2, 8, 8, true, 5, '05.10.2023', 'Extra pillows required');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1008, '25.11.2023', '01.12.2023', 3, 9, 9, true, 6, '20.11.2023', 'Late check-in requested');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1009, '15.12.2023', '20.12.2023', 4, 10, 10, false, 5, '10.12.2023', 'Room with city view preferred');
INSERT INTO Bookings (BookingID, Arrival, Checkout, RoomNumber, CustomerID, ServantID, Breakfast, Nights, Booktime, Observation)
VALUES (1010, '18.12.2023', '19.12.2023', 4, 10, 10, false, 5, '12.12.2023', 'Room with city view preferred');

INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1000, 1000, 1, 30, true, '28.12.2022', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1001, 1001, 2, 50, false, '10.02.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1002, 1002, 3, 40, true, '01.03.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1003, 1003, 4, 100, true, '15.04.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1004, 1004, 5, 60, true, '01.06.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1005, 1005, 6, 35, true, '10.07.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1006, 1006, 7, 30, true, '28.08.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1007, 1007, 8, 45, false, '05.10.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1008, 1008, 9, 120, false, '20.11.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1009, 1009, 10, 65, true, '10.12.2023', false);
INSERT INTO Payments (PaymentID, BookingID, CustomerID, Amount, Paid, PayTime, Cancelled)
VALUES (1010, 1010, 2, 30, true, '12.12.2023', false);

INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (1, 1, 50, '01.01.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (2, 2, 70, '15.02.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (3, 3, 40, '10.03.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (4, 4, 90, '20.04.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (5, 5, 60, '05.06.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (6, 6, 35, '18.07.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (7, 7, 30, '01.09.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (8, 8, 50, '10.10.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (9, 9, 80, '25.11.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (10, 10, 45, '15.12.2023', true);
INSERT INTO Expense (ExpenseID, ServantID, Amount, ExpenseDate, Paid)
VALUES (11, 1, 60, '02.01.2023', true);

INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (1, 1, 1, 'I dont have a refrigerator but I asked to have one.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (2, 2, 2, 'I need an extra pillow in my room.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (3, 3, 3, 'The air conditioning in my room is not working properly.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (4, 4, 4, 'There is a leak in the bathroom sink.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (5, 5, 5, 'The TV remote control is not functioning.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (6, 6, 6, 'The Wi-Fi signal in my room is weak.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (7, 7, 1, 'I would like to request a late checkout.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (8, 8, 2, 'I need assistance with my luggage.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (9, 9, 3, 'There is a problem with the hot water in my room.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (10, 10, 4, 'The room key card is not working.');
INSERT INTO Tickets (TicketID, CustomerID, RoomNumber, Note)
VALUES (11, 1, 1, 'The room needs additional towels.');

INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (1, 1, 1, 'I dont have electricity, unbelievable!');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (2, 2, 2, 'The bathroom faucet is leaking, please fix it.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (3, 3, 3, 'There is a strange smell coming from the air conditioning.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (4, 4, 4, 'The shower drain is clogged, water is not draining properly.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (5, 5, 5, 'The room safe is not working, I cant access my valuables.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (6, 6, 6, 'There is a broken chair in the room, it needs to be replaced.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (7, 7, 1, 'The TV in the room has no signal, unable to watch any channels.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (8, 8, 2, 'The curtains in the room are torn, they need to be repaired.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (9, 9, 3, 'There are stains on the carpet, it needs to be cleaned.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (10, 10, 4, 'The room door lock is malfunctioning, it needs to be fixed.');
INSERT INTO Reclamations (ReclamationID, CustomerID, RoomNumber, Reclamation)
VALUES (11, 1, 1, 'The room is not properly cleaned, there are dirty towels left.');

INSERT INTO Cancellations (BookingID, RoomNumber, CustomerID, Nights, CancelTime)
VALUES (1007, 2, 8, 5, '07.10.2023');
INSERT INTO Cancellations (BookingID, RoomNumber, CustomerID, Nights, CancelTime)
VALUES (1009, 4, 10, 5, '12.03.2023');
INSERT INTO Cancellations (BookingID, RoomNumber, CustomerID, Nights, CancelTime)
VALUES (1010, 4, 4, 5, '20.02.2023');
