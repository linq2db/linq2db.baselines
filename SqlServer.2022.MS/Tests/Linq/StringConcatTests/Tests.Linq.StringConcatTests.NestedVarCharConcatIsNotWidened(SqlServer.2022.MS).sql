-- SqlServer.2022.MS SqlServer.2022
SELECT
	COUNT(*)
FROM
	[LongVarCharKeyRow] [r]
WHERE
	([r].[Notes] + [r].[Sku] + [r].[Sku]) = [r].[Sku]

