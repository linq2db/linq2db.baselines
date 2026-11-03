-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[p].[Title] + CAST([n].[Notes] + [n].[Sku] AS NVarChar(Max))
FROM
	[ConcatProduct] [p]
		CROSS JOIN [LongVarCharKeyRow] [n]
WHERE
	[p].[Id] = 1

