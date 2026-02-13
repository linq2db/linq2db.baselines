-- SqlCe

SELECT
	[m_1].[CategoryID] as [Item1],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON [m_1].[CategoryID] = [d].[CategoryID]

-- SqlCe

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

