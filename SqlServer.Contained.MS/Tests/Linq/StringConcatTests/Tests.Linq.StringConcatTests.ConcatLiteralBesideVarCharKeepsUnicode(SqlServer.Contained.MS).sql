-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[p].[Id],
	N'Артикул ' + [p].[Sku]
FROM
	[ConcatProduct] [p]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

