-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[Id],
	N'Артикул ' + [p].[Sku]
FROM
	[ConcatProduct] [p]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

