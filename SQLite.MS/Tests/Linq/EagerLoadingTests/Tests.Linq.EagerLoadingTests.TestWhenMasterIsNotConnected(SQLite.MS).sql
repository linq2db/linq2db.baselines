BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[DetailId],
	[t1].[MasterId],
	[t1].[DetailValue]
FROM
	[DetailClass] [t1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 11

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id1] as [Key_1]
		FROM
			[MasterManyId] [g_1]
		LIMIT @p
	) [g_2]
GROUP BY
	[g_2].[Key_1]

