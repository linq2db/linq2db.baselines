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
DECLARE @take  -- Int32
SET     @take = 11

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id1] as [Key_1]
		FROM
			[MasterManyId] [g_1]
		LIMIT @take
	) [g_2]
GROUP BY
	[g_2].[Key_1]

