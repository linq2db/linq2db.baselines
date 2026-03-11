-- SqlCe

SELECT
	[product_1].[Id],
	[t2].[OnOrder]
FROM
	[Product] [product_1]
		OUTER APPLY (
			SELECT
				SUM([t1].[OnOrder]) as [OnOrder]
			FROM
				(
					SELECT
						SUM(CAST([testGroup].[Quantity] AS Decimal(18, 10))) as [OnOrder]
					FROM
						[PurchaseOrderLineItem] [testGroup]
					WHERE
						[testGroup].[ProductId] = [product_1].[Id]
					GROUP BY
						[testGroup].[Id]
				) [t1]
		) [t2]

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

