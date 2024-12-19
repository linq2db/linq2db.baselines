BeforeExecute
-- SqlCe

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST([p].[MoneyValue] AS Int) > 0

