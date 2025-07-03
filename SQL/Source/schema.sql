CREATE TABLE Company (
    CompanyId INT IDENTITY(1,1) PRIMARY KEY,
    CName NVARCHAR(100) NOT NULL
);
GO

-- Create table: Passenger
CREATE TABLE Passenger (
    PassengerId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    PassportNumber NVARCHAR(20) NOT NULL UNIQUE
);
GO

-- Create table: Trip
CREATE TABLE Trip (
    TripId INT IDENTITY(1,1) PRIMARY KEY,
    CompanyFK INT NOT NULL,
    Plane VARCHAR(255) NOT NULL,
    Town_from VARCHAR(255) NOT NULL,
    Town_to VARCHAR(255) NOT NULL,
    Time_out DATETIME NOT NULL,
    Time_in DATETIME NOT NULL,
    CONSTRAINT FK_Trip_Company FOREIGN KEY (CompanyFK) REFERENCES Company(CompanyId)
);
GO

-- Create table: Pass_in_trip
CREATE TABLE Pass_in_trip (
    PitId INT IDENTITY(1,1) PRIMARY KEY,
    TripFK INT NOT NULL,
    PassengerFK INT NOT NULL,
    Place VARCHAR(255) NOT NULL,
    CONSTRAINT FK_Pass_in_trip__Trip FOREIGN KEY (TripFK) REFERENCES Trip(TripId),
    CONSTRAINT FK_Pass_in_trip__Passenger FOREIGN KEY (PassengerFK) REFERENCES Passenger(PassengerId)
);
GO