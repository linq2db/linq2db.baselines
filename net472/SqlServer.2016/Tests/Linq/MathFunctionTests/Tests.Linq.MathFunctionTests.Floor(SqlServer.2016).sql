BeforeExecute
-- SqlServer.2016

SELECT
	Floor(-([p].[MoneyValue] + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	Floor(-([p].[MoneyValue] + 1)) <> 0

