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
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[_].[Id] = [__].[FK] AND [__].[Id] IS NULL
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable1]

