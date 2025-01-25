BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestEqualsTable1]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestEqualsTable2]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [t2]
		WHERE
			1 = 0
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable1]

