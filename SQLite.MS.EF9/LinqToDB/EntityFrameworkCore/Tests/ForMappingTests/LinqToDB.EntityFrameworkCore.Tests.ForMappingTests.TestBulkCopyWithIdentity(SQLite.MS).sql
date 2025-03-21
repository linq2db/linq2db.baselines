-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[WithIdentity]
(
	[Id]   INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name] TEXT     NOT NULL
)



-- SQLite.MS SQLite

INSERT INTO temp.[WithIdentity]
(
	[Name]
)
VALUES
('John Doe'),
('Jane Doe')



-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[WithIdentity] [t1]



-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[WithIdentity]



