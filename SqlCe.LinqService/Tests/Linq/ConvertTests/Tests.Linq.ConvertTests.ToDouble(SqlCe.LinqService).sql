BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(CAST([p].[MoneyValue] AS Float) AS Int) > 0

