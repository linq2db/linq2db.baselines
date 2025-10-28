BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[x].[Id]
		FROM
			[Item] [x]
				LEFT JOIN [ItemValue] [a_Values] ON [x].[Id] = [a_Values].[ItemId]
	) [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]
ORDER BY
	Coalesce((
		SELECT
			SUM([a_Values].[Value])
		FROM
			[ItemValue] [a_Values]
		WHERE
			[x].[Id] = [a_Values].[ItemId]
	), 0)

