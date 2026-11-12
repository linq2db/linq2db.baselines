-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[CategoryID],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID] as [CategoryID_1],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON ([m_1].[CategoryID] = [d].[CategoryID])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

