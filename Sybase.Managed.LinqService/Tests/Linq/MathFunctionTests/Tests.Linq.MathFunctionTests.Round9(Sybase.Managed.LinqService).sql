BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0

