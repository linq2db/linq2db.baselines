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
DECLARE @param  -- Int32
SET     @param = 0

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
			[__].[Id] = @param AND [_].[Id] = [__].[FK]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestEqualsTable1]

