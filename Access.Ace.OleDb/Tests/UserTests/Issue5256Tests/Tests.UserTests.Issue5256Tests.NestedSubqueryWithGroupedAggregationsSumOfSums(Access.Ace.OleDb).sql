-- Access.Ace.OleDb AccessOleDb

SELECT
	[product_1].[Id],
	(
		SELECT
			SUM([t1].[OnOrder]) as [OnOrder]
		FROM
			(
				SELECT
					SUM([testGroup].[Quantity]) as [OnOrder]
				FROM
					[PurchaseOrderLineItem] [testGroup]
				GROUP BY
					[testGroup].[Id]
			) [t1]
	)
FROM
	[Product] [product_1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Product] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[ProductId],
	[t1].[Quantity]
FROM
	[PurchaseOrderLineItem] [t1]

