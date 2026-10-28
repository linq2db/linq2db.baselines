-- SqlServer.2014
SELECT TOP (2)
	N'Артикул ' + Coalesce([x].[Sku], '')
FROM
	[ConcatCatalogItem] [x]

