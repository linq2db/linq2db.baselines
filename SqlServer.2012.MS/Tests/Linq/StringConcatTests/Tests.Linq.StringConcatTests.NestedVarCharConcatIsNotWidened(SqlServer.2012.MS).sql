-- SqlServer.2012.MS SqlServer.2012
SELECT
	COUNT(*)
FROM
	[LongVarCharKeyRow] [r]
WHERE
	([r].[Notes] + [r].[Sku] + [r].[Sku]) = [r].[Sku]

