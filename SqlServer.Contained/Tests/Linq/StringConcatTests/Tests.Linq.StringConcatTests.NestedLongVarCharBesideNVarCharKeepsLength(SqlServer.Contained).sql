-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	[p].[Title] || CAST([n].[Notes] AS NVarChar(Max)) || [n].[Sku]
FROM
	[ConcatProduct] [p]
		CROSS JOIN [LongVarCharKeyRow] [n]
WHERE
	[p].[Id] = 1

