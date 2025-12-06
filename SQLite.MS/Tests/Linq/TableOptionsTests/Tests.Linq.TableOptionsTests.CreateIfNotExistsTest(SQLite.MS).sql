-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO [CreateIfNotExistsTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

