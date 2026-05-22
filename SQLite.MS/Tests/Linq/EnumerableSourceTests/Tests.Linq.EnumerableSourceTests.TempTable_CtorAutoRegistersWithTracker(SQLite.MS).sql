-- SQLite.MS SQLite

CREATE TABLE [ParamRow]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO [ParamRow]
(
	[Id],
	[Data]
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[ParamRow] [t1]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ParamRow]

