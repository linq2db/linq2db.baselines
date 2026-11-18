-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	Coalesce(Coalesce([t].[Sku], [t].[Title]), '') + CAST([t].[Notes] AS NVarChar(Max)),
	CAST([t].[Notes] AS NVarChar(Max)) + Coalesce(Coalesce([t].[Sku], [t].[Title]), '')
FROM
	[CoalesceVarCharRow] [t]

