BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TestEqualsTable1]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TestEqualsTable2]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[_].[Id] = [__].[FK] AND [__].[Id] IS NULL
	))

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TestEqualsTable1]

