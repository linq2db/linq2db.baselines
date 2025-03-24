-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[Issue4671Entity1TMP]
(
	[Id]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)



-- SQLite.MS SQLite

INSERT INTO [Issue4671Entity1]
(
	[Value]
)
VALUES
(
	1
)



-- SQLite.MS SQLite

INSERT INTO temp.[Issue4671Entity1TMP]
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
	[Issue4671Entity1] [t1]
LIMIT 2



-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[Issue4671Entity1TMP] [t1]
LIMIT 2



-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[Issue4671Entity1TMP]



