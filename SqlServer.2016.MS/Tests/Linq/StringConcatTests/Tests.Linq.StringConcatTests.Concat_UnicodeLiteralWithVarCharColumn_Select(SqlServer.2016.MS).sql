-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	N'Артикул ' + Coalesce([x].[Sku], '')
FROM
	[ConcatCatalogItem] [x]

