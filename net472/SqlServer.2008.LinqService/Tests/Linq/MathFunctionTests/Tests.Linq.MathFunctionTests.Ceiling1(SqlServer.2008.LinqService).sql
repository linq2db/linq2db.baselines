BeforeExecute
-- SqlServer.2008

SELECT
	Ceiling(-([p].[MoneyValue] + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	Ceiling(-([p].[MoneyValue] + 1)) <> 0

