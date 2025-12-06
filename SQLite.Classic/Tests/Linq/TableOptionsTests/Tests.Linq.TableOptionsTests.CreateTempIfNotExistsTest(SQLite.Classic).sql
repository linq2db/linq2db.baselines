-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[CreateIfNotExistsTable] [t1]

-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[CreateIfNotExistsTable]

