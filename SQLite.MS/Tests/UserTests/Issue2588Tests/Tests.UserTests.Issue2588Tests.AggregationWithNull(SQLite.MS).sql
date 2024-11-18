BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	MAX([x].[Value])
FROM
	[TestClass] [x]
WHERE
	[x].[Id] = 0

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestClass]

