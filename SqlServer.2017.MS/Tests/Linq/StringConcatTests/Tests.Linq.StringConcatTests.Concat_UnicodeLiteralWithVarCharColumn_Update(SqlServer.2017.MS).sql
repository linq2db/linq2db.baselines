-- SqlServer.2017.MS SqlServer.2017
UPDATE
	[ConcatCatalogItem]
SET
	[Label] = N'Артикул ' + Coalesce([ConcatCatalogItem].[Sku], '')

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	[t1].[Id],
	[t1].[Sku],
	[t1].[Label]
FROM
	[ConcatCatalogItem] [t1]

