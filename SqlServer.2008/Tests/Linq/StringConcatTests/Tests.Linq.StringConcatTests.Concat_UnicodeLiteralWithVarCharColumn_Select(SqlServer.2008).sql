-- SqlServer.2008
SELECT TOP (2)
	N'Артикул ' + Coalesce([x].[Sku], '')
FROM
	[ConcatCatalogItem] [x]

