BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CreateIfNotExistsTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
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

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

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

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

