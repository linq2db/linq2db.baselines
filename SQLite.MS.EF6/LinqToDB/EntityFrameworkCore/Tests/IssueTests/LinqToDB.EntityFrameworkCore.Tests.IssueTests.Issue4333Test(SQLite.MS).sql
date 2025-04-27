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
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[Identities] [t1]
ORDER BY
	[t1].[Id]



-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[Identities]



