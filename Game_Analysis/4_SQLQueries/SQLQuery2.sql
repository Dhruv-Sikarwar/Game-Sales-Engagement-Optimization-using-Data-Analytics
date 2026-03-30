
/*
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Game_Id ORDER BY (SELECT 0)) AS rn
    FROM Cleaned_Games
)
DELETE FROM CTE
WHERE rn > 1;

*/
-- SELECT COUNT(DISTINCT Publisher) FROM Cleaned_VGSales;
-- SELECT * FROM Teams ORDER BY Team_Id;
SELECT COUNT(DISTINCT Game_Id) FROM Cleaned_Games;