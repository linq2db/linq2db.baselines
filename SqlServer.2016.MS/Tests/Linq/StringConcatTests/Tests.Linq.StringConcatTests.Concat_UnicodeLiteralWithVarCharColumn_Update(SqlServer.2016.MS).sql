-- SqlServer.2016.MS SqlServer.2016
UPDATE
	[ConcatCatalogItem]
SET
	[Label] = N'Артикул ' + Coalesce([ConcatCatalogItem].[Sku], '')

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[t1].[Id],
	[t1].[Sku],
	[t1].[Label]
FROM
	[ConcatCatalogItem] [t1]

