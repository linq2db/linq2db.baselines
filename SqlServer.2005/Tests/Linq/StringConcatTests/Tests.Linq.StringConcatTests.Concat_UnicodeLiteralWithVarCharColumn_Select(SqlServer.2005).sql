-- SqlServer.2005
SELECT TOP (2)
	N'Артикул ' + Coalesce([x].[Sku], '')
FROM
	[ConcatCatalogItem] [x]

