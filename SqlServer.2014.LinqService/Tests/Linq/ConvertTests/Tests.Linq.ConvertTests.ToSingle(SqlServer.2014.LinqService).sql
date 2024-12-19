BeforeExecute
-- SqlServer.2014

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST([p].[MoneyValue] AS Real) > 0

