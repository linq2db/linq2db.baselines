BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	(IIF([t].[BoolValue] = 0, 1, 0) = 1 AND IIF([t].[BoolValue] = 0, 1, 0) IS NOT NULL)

