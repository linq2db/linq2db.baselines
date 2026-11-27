-- SQLite.Classic SQLite
CREATE TEMPORARY TABLE temp.[TempIdentityRowTMP]
(
	[Id]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

-- SQLite.Classic SQLite
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- SQLite.Classic SQLite
INSERT INTO temp.[TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[TempIdentityRowTMP] [t1]
LIMIT 2

-- SQLite.Classic SQLite
DROP TABLE IF EXISTS temp.[TempIdentityRowTMP]

