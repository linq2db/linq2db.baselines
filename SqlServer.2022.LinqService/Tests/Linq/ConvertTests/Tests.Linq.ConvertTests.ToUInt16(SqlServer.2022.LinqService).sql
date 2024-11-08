BeforeExecute
-- SqlServer.2022

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS Int) > 0

