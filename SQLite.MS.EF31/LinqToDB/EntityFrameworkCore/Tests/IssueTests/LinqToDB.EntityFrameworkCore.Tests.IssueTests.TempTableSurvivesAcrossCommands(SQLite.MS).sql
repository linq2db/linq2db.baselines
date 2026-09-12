-- SQLite.MS SQLite
CREATE TEMPORARY TABLE temp.[Identities]
(
	[Id]   INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name] TEXT     NOT NULL
)



-- SQLite.MS SQLite
INSERT INTO temp.[Identities]
(
	[Name]
)
VALUES
('Bar'),
('Baz')



-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	temp.[Identities] [t1]



-- SQLite.MS SQLite
SELECT
	[e].[Name]
FROM
	temp.[Identities] [e]
ORDER BY
	[e].[Id]



-- SQLite.MS SQLite
DROP TABLE IF EXISTS temp.[Identities]



