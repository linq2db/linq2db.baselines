-- SqlServer.2025
SELECT
	[p].[Id],
	N'Артикул ' || [p].[Sku]
FROM
	[ConcatProduct] [p]

-- SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

