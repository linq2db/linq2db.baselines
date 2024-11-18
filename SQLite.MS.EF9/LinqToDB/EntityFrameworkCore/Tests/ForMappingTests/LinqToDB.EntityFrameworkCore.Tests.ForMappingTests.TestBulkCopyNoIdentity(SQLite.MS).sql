--  SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[NoIdentity]
(
	[Id]   TEXT NOT NULL,
	[Name] TEXT NOT NULL,

	CONSTRAINT [PK_NoIdentity] PRIMARY KEY ([Id])
)



--  SQLite.MS SQLite

INSERT INTO temp.[NoIdentity]
(
	[Id],
	[Name]
)
VALUES
('3EF8C45A-663A-4A14-9FD3-39DA2A631244','John Doe'),
('0E34A16B-6AAA-40BC-A1F0-D543EA2FA636','Jane Doe')



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[NoIdentity] [t1]



--  SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



