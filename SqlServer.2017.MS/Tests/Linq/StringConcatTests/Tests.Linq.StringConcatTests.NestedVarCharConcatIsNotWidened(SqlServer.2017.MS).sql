-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[LongVarCharKeyRow] [r]
WHERE
	([r].[Notes] + [r].[Sku] + [r].[Sku]) = [r].[Sku]

