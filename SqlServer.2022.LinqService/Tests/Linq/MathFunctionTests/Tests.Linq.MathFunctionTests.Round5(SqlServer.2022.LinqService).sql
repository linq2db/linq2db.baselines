BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 0) <> 0

