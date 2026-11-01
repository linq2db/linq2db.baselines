-- SqlServer.2008
SELECT TOP (2)
	[p].[Title] + CAST([n].[Notes] AS NVarChar(Max)) + [n].[Sku]
FROM
	[ConcatProduct] [p]
		CROSS JOIN [LongVarCharKeyRow] [n]
WHERE
	[p].[Id] = 1

