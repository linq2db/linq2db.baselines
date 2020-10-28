BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Floor(-([p].[MoneyValue] + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	Floor(-([p].[MoneyValue] + 1)) <> 0

