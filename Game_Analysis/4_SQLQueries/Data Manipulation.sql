/*
USE GAMES

--Insertion In Genres

INSERT INTO Genres(Genre_Name)
SELECT DISTINCT Genres
FROM Cleaned_Games
WHERE Genres IS NOT NULL; 

-- Insertion In Teams

INSERT INTO Teams(Team_Name)
SELECT DISTINCT Team
FROM Cleaned_Games
WHERE Team IS NOT NULL;

-- Platforms Table

INSERT INTO Platforms(Platform_Name)
SELECT DISTINCT Platform
FROM Cleaned_VGSales
WHERE Platform IS NOT NULL;

-- Publisher Table 

INSERT INTO Publishers(Publisher_Name)
SELECT DISTINCT Publisher
FROM Cleaned_VGSales 
WHERE Publisher IS NOT NULL;

-- Games Table 

INSERT INTO Games(
Title,
Release_Date,
Rating,
Times_Listed,
Number_Of_Reviews,
Summary,
Reviews,
Plays,
Playing,
Backlogs,
Wishlist
)
SELECT DISTINCT
Title,
Release_Date,
Rating,
Times_Listed,
Number_Of_Reviews,
Summary,
Reviews,
Plays,
Playing,
Backlogs,
Wishlist
FROM Cleaned_Games;

-- Game Genre Table

INSERT INTO Game_Genre(Game_Id,Genre_Id)
SELECT DISTINCT g.Game_Id,ge.Genre_Id
FROM Cleaned_Games cg
JOIN Games g
ON g.Title = cg.Title
JOIN Genres ge
ON ge.Genre_Name = cg.Genres;

-- Game Teams Table

INSERT INTO Game_Teams(Game_Id,Team_Id)
SELECT DISTINCT G.Game_Id,T.Team_Id
FROM Cleaned_Games CG
JOIN Games G
ON G.Title=CG.Title
JOIN Teams T
ON T.Team_Name=CG.Team;
*/ 

-- Sales Team Table

INSERT INTO Sales(
Game_ID,
Platform_ID,
Publisher_ID,
Year,
NA_Sales,
EU_Sales,
JP_Sales,
Other_Sales,
Global_Sales
)

SELECT
g.Game_ID,
p.Platform_ID,
pub.Publisher_ID,
v.Year,
v.NA_Sales,
v.EU_Sales,
v.JP_Sales,
v.Other_Sales,
v.Global_Sales

FROM Cleaned_VGSales v

JOIN Games g
ON g.Title = v.Name

JOIN Platforms p
ON p.Platform_Name = v.Platform

JOIN Publishers pub
ON pub.Publisher_Name = v.Publisher;