-- SqlServer.2008
SELECT TOP (2)
	CAST([t].[Notes] AS NVarChar(Max)) + CASE
		WHEN [t].[Flag] = 1 THEN [t].[Sku]
		ELSE [t].[Title]
	END
FROM
	[SplitVarCharRow] [t]

