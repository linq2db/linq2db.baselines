BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[CreateIfNotExistsTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[CreateIfNotExistsTable]

