-- SqlServer.2022

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 0) <> 0

