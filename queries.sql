-- a.) List all games released before 1998. State the name and release date.
SELECT Name, Release_Year
FROM games
WHERE Release_Year < 1998;

-- b.) List all games that fall under the Puzzle and Racing genres. State the name and all genres.
SELECT Name, Genre
FROM games
WHERE Genre = 'Puzzle' OR Genre = 'Racing';

-- c.) List the 10 most recently released games and the companies who worked on them. State the name, release date, publishers, and developers.
SELECT Name, Release_Year, Publisher, Developer
FROM games
ORDER BY Release_Year DESC LIMIT 10;

-- d.) List all games developed and published by the same company. State the name, publishers, and developers.
SELECT Name, Publisher, Developer
FROM games
WHERE Publisher = Developer;

-- e.) Find which game genre has the most entries in the database.
SELECT Genre AS Genre, COUNT(*) AS Entries
FROM games
GROUP BY Genre
ORDER BY COUNT(*) DESC LIMIT 1;

-- f.) List all publishers who have published at least one Role-playing game. State the publisher and the games they published. NEEDS JOIN
SELECT p.name AS Publisher,
GROUP_CONCAT(g.name) AS Games
FROM publishers p
INNER JOIN games g ON p.name = g.publisher
WHERE g.genre = 'Role-playing'
GROUP BY p.name;

-- g.) List all developers who have worked on at least one multiplayer game. State the developer and the games they worked on. NEEDS JOIN
SELECT d.name AS Developer,
GROUP_CONCAT(g.name) AS Games
FROM developers d
INNER JOIN games g ON d.name = g.developer
WHERE g.amount_of_players = 'Multiplayer'
GROUP BY d.name;

-- h.) List all publishers and developers whose headquarters are located in California. State the publishers and developers as "company"
-- and headquarters as "location". NEEDS JOIN
SELECT Name AS company, 'California' AS location
FROM publishers
WHERE Headquarters LIKE '%California%'
UNION
SELECT Name AS company, 'California' AS location
FROM developers
WHERE Headquarters LIKE '%California%';
