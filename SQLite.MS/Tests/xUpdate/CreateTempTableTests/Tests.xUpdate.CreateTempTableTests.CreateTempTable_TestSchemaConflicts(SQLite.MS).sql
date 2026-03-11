-- SQLite.MS SQLite

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	'value'
)

-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[Id]      INTEGER       NOT NULL,
	[Renamed] NVarChar(255)     NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Id])
)

-- SQLite.MS SQLite

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]

-- SQLite.MS SQLite

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	'value 2'
)

-- SQLite.MS SQLite

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
VALUES
(
	2,
	'renamed 2'
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Renamed]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

