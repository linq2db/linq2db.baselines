BeforeExecute
-- SqlServer.2012

SELECT
	Round([p].[MoneyValue], 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	(Round([p].[MoneyValue], 0, 1) <> 0.1 OR Round([p].[MoneyValue], 0, 1) IS NULL)

