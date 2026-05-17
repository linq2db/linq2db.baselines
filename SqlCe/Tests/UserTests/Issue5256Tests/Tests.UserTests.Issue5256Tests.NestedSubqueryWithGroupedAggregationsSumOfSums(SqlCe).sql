-- SqlCe

SELECT
	[product_1].[Id],
	[t2].[OnOrder]
FROM
	[Product] [product_1]
		LEFT JOIN (
			SELECT
				SUM([t1].[OnOrder]) as [OnOrder]
			FROM
				(
					SELECT
						SUM(CAST([testGroup].[Quantity] AS Decimal(18, 10))) as [OnOrder]
					FROM
						[PurchaseOrderLineItem] [testGroup]
					GROUP BY
						[testGroup].[Id]
				) [t1]
		) [t2] ON 1=1

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Product] [t1]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[ProductId],
	[t1].[Quantity]
FROM
	[PurchaseOrderLineItem] [t1]

