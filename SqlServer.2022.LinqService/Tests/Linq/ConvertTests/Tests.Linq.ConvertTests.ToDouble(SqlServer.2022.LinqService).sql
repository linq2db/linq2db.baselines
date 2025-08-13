BeforeExecute
-- SqlServer.2022

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor(CAST([p].[MoneyValue] AS Float)) AS Int) > 0

