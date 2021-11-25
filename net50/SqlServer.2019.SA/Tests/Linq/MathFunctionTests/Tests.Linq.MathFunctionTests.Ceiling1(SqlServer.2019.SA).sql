BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Ceiling(-([p].[MoneyValue] + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	Ceiling(-([p].[MoneyValue] + 1)) <> 0

