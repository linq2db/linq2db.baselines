BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0

