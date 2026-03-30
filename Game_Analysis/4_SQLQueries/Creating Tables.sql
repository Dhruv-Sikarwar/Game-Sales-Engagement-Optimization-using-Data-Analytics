-- Genres Table 
/*
CREATE TABLE Genres(
Genre_Id INT IDENTITY(1,1) PRIMARY KEY,
Genre_Name VARCHAR(50) UNIQUE NOT NULL);

-- Teams Table
CREATE TABLE Teams(
Team_Id INT IDENTITY(1,1) PRIMARY KEY,
Team_Name VARCHAR(255) UNIQUE NOT NULL);

-- Platform Table
CREATE TABLE Platforms(
Platform_Id INT IDENTITY(1,1) PRIMARY KEY,
Platform_Name VARCHAR(50) UNIQUE NOT NULL
);

--Publisher Table 
CREATE TABLE Publishers(
Publisher_Id INT IDENTITY(1,1) PRIMARY KEY,
Publisher_Name VARCHAR(255) UNIQUE NOT NULL);

-- Games Table

CREATE TABLE Games(
Game_Id INT IDENTITY(1,1) PRIMARY KEY,
Title VARCHAR(MAX) NOT NULL,
Release_Date DATE,
Rating FLOAT,
Times_Listed INT,
Number_Of_Reviews INT,
Summary VARCHAR(MAX),
Reviews VARCHAR(MAX),
Plays INT,
Playing INT,
Backlogs INT,
Wishlist INT
);

-- Game Genre Table

CREATE TABLE Game_Genre(
Game_Id INT,
Genre_Id INT,
PRIMARY KEY (Game_Id,Genre_Id),
FOREIGN KEY(Game_Id) REFERENCES Games(Game_Id),
FOREIGN KEY(Genre_Id) REFERENCES Genres(Genre_Id));

-- Game Teams Table 

CREATE TABLE Game_Teams(
Game_Id INT,
Team_Id INT,
PRIMARY KEY(Game_Id,Team_Id),

FOREIGN KEY(Game_Id) REFERENCES Games(Game_Id),
FOREIGN KEY(Team_Id) REFERENCES Teams(Team_Id)
);

 -- Sales Table
CREATE TABLE Sales(
Sale_Id INT IDENTITY(1,1) PRIMARY KEY,
Game_Id INT NOT NULL,
Platform_Id INT NOT NULL,
Publisher_Id INT NOT NULL,

Year INT,

NA_Sales FLOAT,
EU_Sales FLOAT,
JP_Sales FLOAT,
Other_Sales FLOAT,
Global_Sales FLOAT,

FOREIGN KEY(Game_Id) REFERENCES Games(Game_Id),
FOREIGN KEY(Platform_Id) REFERENCES Platforms(Platform_Id),
FOREIGN KEY(Publisher_Id) REFERENCES Publishers(Publisher_Id)
);
*/