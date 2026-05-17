-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[CreateIfNotExistsTable] [t1]

-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[CreateIfNotExistsTable]

