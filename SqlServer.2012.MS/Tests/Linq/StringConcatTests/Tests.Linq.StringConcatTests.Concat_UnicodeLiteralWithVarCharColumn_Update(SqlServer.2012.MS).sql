-- SqlServer.2012.MS SqlServer.2012
UPDATE
	[ConcatCatalogItem]
SET
	[Label] = N'Артикул ' + Coalesce([ConcatCatalogItem].[Sku], '')

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	[t1].[Id],
	[t1].[Sku],
	[t1].[Label]
FROM
	[ConcatCatalogItem] [t1]

