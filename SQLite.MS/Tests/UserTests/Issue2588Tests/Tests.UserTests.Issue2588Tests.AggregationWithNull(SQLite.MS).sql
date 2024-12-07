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
-- SQLite.MS SQLite (asynchronously)

SELECT
	MAX([x].[Value])
FROM
	[TestClass] [x]
WHERE
	[x].[Id] = 0

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	MAX(CASE
		WHEN [d].[Value] IS NOT NULL THEN [d].[Value]
		ELSE 0
	END)
FROM
	(
		SELECT
			1 as [c1]
	) [t1]
		LEFT JOIN [TestClass] [d] ON [d].[Id] = 0

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	MAX(CASE
		WHEN [d].[Value] IS NOT NULL THEN [d].[Value]
		ELSE 5
	END)
FROM
	(
		SELECT
			1 as [c1]
	) [t1]
		LEFT JOIN [TestClass] [d] ON [d].[Id] = 0

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestClass]

