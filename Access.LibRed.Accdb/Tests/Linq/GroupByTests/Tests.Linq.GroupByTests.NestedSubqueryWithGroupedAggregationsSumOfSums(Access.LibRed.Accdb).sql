-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[product].[Id],
	(
		SELECT
			SUM([t1].[OnOrder])
		FROM
			(
				SELECT
					SUM([testGroup].[Quantity]) as [OnOrder]
				FROM
					[GroupedSumLineItem] [testGroup]
				GROUP BY
					[testGroup].[Id]
			) [t1]
	)
FROM
	[GroupedSumProduct] [product]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[GroupedSumProduct] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[ProductId],
	[t1].[Quantity]
FROM
	[GroupedSumLineItem] [t1]

