BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	(IIF([t].[BoolValue] = 0, 1, 0) = 1 AND IIF([t].[BoolValue] = 0, 1, 0) IS NOT NULL)

