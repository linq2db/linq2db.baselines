-- Access.Jet.OleDb AccessOleDb

SELECT
	[m_1].[Item1],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t1].[Item1]
		FROM
			(
				SELECT
					[x].[Id] as [Item1]
				FROM
					[Item] [x]
			) [t1]
	) [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Item1] = [d].[ItemId])

-- Access.Jet.OleDb AccessOleDb

SELECT
	[x_1].[Id],
	[x_1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			(
				SELECT
					SUM([a_Values].[Value]) as [Sum_1]
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			) as [Sum_1]
		FROM
			[Item] [x]
	) [x_1]
ORDER BY
	[x_1].[Sum_1]

