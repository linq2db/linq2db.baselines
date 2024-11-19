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
('91E1AC7F-066C-4D4C-A599-5EA030AB4A08','John Doe'),
('6BA7200B-8359-44CA-A2FA-171D7D5EA033','Jane Doe')



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[NoIdentity] [t1]



--  SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



