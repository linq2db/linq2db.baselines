-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[Issue4671EntityTMP]
(
	[Id]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

-- SQLite.MS SQLite

INSERT INTO temp.[Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[Issue4671EntityTMP] [t1]
LIMIT 2

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[Issue4671EntityTMP]

