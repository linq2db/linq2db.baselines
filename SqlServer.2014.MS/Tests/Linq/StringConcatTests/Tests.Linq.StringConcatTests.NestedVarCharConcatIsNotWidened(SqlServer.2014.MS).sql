-- SqlServer.2014.MS SqlServer.2014
SELECT
	COUNT(*)
FROM
	[LongVarCharKeyRow] [r]
WHERE
	([r].[Notes] + [r].[Sku] + [r].[Sku]) = [r].[Sku]

