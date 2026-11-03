-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	N'Артикул ' || Coalesce([x].[Sku], '')
FROM
	[ConcatCatalogItem] [x]

