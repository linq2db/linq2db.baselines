BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN CAST([t].[MoneyValue] AS Float) - FLOOR(CAST([t].[MoneyValue] AS Float)) = 0.5 AND (Convert(Int, FLOOR(CAST([t].[MoneyValue] AS Float))) % 2) = 0
			THEN FLOOR(CAST([t].[MoneyValue] AS Float))
		ELSE ROUND(CAST([t].[MoneyValue] AS Float), 0)
	END <> 0

