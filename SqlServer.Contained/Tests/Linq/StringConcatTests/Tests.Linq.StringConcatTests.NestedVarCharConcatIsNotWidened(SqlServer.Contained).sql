-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[LongVarCharKeyRow] [r]
WHERE
	([r].[Notes] || [r].[Sku] || [r].[Sku]) = [r].[Sku]

