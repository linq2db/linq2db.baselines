-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	CAST([t].[Notes] AS NVarChar(Max)) || IIF([t].[Flag] = 1, [t].[Sku], [t].[Title])
FROM
	[SplitVarCharRow] [t]

