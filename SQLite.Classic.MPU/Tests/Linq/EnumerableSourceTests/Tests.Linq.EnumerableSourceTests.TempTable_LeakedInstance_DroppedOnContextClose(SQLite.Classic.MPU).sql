-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [ParamRow]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[ParamRow] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ParamRow]

