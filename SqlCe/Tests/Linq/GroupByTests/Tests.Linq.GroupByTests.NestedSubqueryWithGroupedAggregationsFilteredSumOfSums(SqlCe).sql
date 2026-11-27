-- SqlCe
SELECT
	[product].[Id],
	[t2].[OnOrder]
FROM
	[GroupedSumProduct] [product]
		OUTER APPLY (
			SELECT
				SUM([t1].[OnOrder]) as [OnOrder]
			FROM
				(
					SELECT
						SUM(CAST([testGroup].[Quantity] AS Decimal(18, 10))) as [OnOrder]
					FROM
						[GroupedSumLineItem] [testGroup]
					WHERE
						[testGroup].[ProductId] = [product].[Id]
					GROUP BY
						[testGroup].[Id]
				) [t1]
		) [t2]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[GroupedSumProduct] [t1]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[ProductId],
	[t1].[Quantity]
FROM
	[GroupedSumLineItem] [t1]

