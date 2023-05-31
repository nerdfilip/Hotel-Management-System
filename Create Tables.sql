DROP TABLE IF EXISTS Rooms CASCADE;
CREATE TABLE Rooms
(
	RoomNumber int
		CONSTRAINT pk_RoomNumber PRIMARY KEY
		CONSTRAINT un_RoomNumber UNIQUE
		CONSTRAINT nn_RoomNumber NOT NULL
	,RoomType varchar(50) NOT NULL
	,PricePerNight decimal
	,MaxPersons int
	,Looked boolean
);

DROP TABLE IF EXISTS Customers CASCADE;
CREATE TABLE Customers
(
	CustomerID int
		CONSTRAINT pk_CustomerID PRIMARY KEY
		CONSTRAINT un_CustomerID UNIQUE
		CONSTRAINT nn_CustomerID NOT NULL
	,FirstName varchar(50) NOT NULL
	,LastName varchar(50) NOT NULL
	,Email varchar(50)
	,Phone varchar(50)
	,Country varchar(50)
	,RegTime date
);

DROP TABLE IF EXISTS Servants CASCADE;
CREATE TABLE Servants
(
	ServantID int
		CONSTRAINT pk_ServantID PRIMARY KEY
		CONSTRAINT un_ServantID UNIQUE
		CONSTRAINT nn_ServantID NOT NULL
	,RoomNumber int
		CONSTRAINT fk_Servants_RN REFERENCES Rooms(RoomNumber)
	,FirstName varchar(50) NOT NULL
	,LastName varchar(50) NOT NULL
	,Phone varchar(50)
);

DROP TABLE IF EXISTS Bookings CASCADE;
CREATE TABLE Bookings
(
	BookingID int 
		CONSTRAINT pk_BookingID PRIMARY KEY
		CONSTRAINT un_BookingID UNIQUE
		CONSTRAINT nn_BookingID NOT NULL
	,Arrival date
	,Checkout date
	,RoomNumber int
		CONSTRAINT fk_Bookings_RN REFERENCES Rooms(RoomNumber)
	,CustomerID int
		CONSTRAINT fk_Bookings_CID REFERENCES Customers(CustomerID)
	,ServantID int
		CONSTRAINT fk_Bookings_SID REFERENCES Servants(ServantID)
	,Breakfast boolean
	,Nights int NOT NULL
	,BookTime date
	,Observation varchar(400)
);

DROP TABLE IF EXISTS Payments CASCADE;
CREATE TABLE Payments
(
	PaymentID int 
		CONSTRAINT pk_PaymentID PRIMARY KEY
		CONSTRAINT un_PaymentID UNIQUE
		CONSTRAINT nn_PaymentID NOT NULL
	,BookingID int
		CONSTRAINT fk_Payments_BID REFERENCES Bookings(BookingID)
	,CustomerID int
		CONSTRAINT fk_Payments_CID REFERENCES Customers(CustomerID)
	,Amount decimal
	,Paid boolean NOT NULL
	,PayTime date
	,Cancelled boolean
);

DROP TABLE IF EXISTS Expense CASCADE;
CREATE TABLE Expense
(
	ExpenseID int
		CONSTRAINT pk_ExpenseID PRIMARY KEY
		CONSTRAINT un_ExpenseID UNIQUE
		CONSTRAINT nn_ExpenseID NOT NULL
	,ServantID int
		CONSTRAINT fk_Expense_SID REFERENCES Servants(ServantID)
	,Amount decimal
	,ExpenseDate date
	,Paid boolean NOT NULL
);

DROP TABLE IF EXISTS Tickets CASCADE;
CREATE TABLE Tickets
(
	TicketID int
		CONSTRAINT pk_TicketID PRIMARY KEY
		CONSTRAINT un_TicketID UNIQUE
		CONSTRAINT nn_TicketID NOT NULL
	,CustomerID int
		CONSTRAINT fk_Tickets_CID REFERENCES Customers(CustomerID)
	,RoomNumber int
		CONSTRAINT fk_Tickets_RN REFERENCES Rooms(RoomNumber)
	,Note varchar(400) NOT NULL
);

DROP TABLE IF EXISTS Reclamations CASCADE;
CREATE TABLE Reclamations
(
	ReclamationID int
		CONSTRAINT pk_ReclamationID PRIMARY KEY
		CONSTRAINT un_ReclamationID UNIQUE
		CONSTRAINT nn_ReclamationID NOT NULL
	,CustomerID int
		CONSTRAINT fk_Reclamations_CID REFERENCES Customers(CustomerID)
	,RoomNumber int
		CONSTRAINT fk_Reclamations_RN REFERENCES Rooms(RoomNumber)
	,Reclamation varchar(400) NOT NULL
);

DROP TABLE IF EXISTS Cancellations CASCADE;
CREATE TABLE Cancellations
(
	BookingID int
		CONSTRAINT fk_Cancellations_BID REFERENCES Bookings(BookingID)
	,RoomNumber int
		CONSTRAINT fk_Cancellations_RN REFERENCES Rooms(RoomNumber)
	,CustomerID int
		CONSTRAINT fk_Cancellations_CID REFERENCES Customers(CustomerID)
	,Nights int NOT NULL
	,CancelTime date
);
