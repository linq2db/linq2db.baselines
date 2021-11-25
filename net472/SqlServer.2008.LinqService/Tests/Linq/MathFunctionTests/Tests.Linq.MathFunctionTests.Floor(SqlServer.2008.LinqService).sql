BeforeExecute
-- SqlServer.2008

SELECT
	Floor(-([p].[MoneyValue] + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	Floor(-([p].[MoneyValue] + 1)) <> 0

