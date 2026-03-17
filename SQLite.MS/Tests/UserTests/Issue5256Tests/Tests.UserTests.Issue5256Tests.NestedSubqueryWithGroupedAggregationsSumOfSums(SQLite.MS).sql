-- SQLite.MS SQLite

SELECT
	[product_1].[Id],
	(
		SELECT
			SUM([t1].[OnOrder])
		FROM
			(
				SELECT
					SUM(CAST([testGroup].[Quantity] AS Decimal)) as [OnOrder]
				FROM
					[PurchaseOrderLineItem] [testGroup]
				GROUP BY
					[testGroup].[Id]
			) [t1]
	)
FROM
	[Product] [product_1]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Product] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[ProductId],
	[t1].[Quantity]
FROM
	[PurchaseOrderLineItem] [t1]

