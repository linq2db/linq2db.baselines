-- SqlServer.2025
UPDATE
	[ConcatCatalogItem]
SET
	[Label] = N'Артикул ' || Coalesce([ConcatCatalogItem].[Sku], '')

-- SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Sku],
	[t1].[Label]
FROM
	[ConcatCatalogItem] [t1]

