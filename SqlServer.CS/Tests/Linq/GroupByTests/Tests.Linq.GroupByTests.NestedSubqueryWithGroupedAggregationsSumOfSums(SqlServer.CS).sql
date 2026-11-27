-- SqlServer.CS SqlServer.2025
SELECT
	[product].[Id],
	(
		SELECT
			SUM([t1].[OnOrder])
		FROM
			(
				SELECT
					SUM(CAST([testGroup].[Quantity] AS Decimal(18, 10))) as [OnOrder]
				FROM
					[GroupedSumLineItem] [testGroup]
				GROUP BY
					[testGroup].[Id]
			) [t1]
	)
FROM
	[GroupedSumProduct] [product]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[GroupedSumProduct] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[ProductId],
	[t1].[Quantity]
FROM
	[GroupedSumLineItem] [t1]

