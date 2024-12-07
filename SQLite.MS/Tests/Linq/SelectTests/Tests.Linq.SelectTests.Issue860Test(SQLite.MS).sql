BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table860_1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table860_1]
(
	[Id]  INTEGER NOT NULL,
	[bId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table860_2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table860_2]
(
	[Id]  INTEGER NOT NULL,
	[cId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table860_3]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table860_3]
(
	[Id]   INTEGER       NOT NULL,
	[Prop] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[it].[Id],
	[it].[bId]
FROM
	[Table860_1] [it]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table860_2] [d]
				LEFT JOIN [Table860_3] [a_Table3] ON [d].[cId] = [a_Table3].[Id]
		WHERE
			[it].[bId] = [d].[Id] AND [a_Table3].[Prop] = 'aaa'
	) AND
	EXISTS(
		SELECT
			*
		FROM
			[Table860_2] [a_Table2]
		WHERE
			[it].[bId] = [a_Table2].[Id]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table860_3]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table860_2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table860_1]

