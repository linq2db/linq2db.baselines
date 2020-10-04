BeforeExecute
-- SqlServer.2012

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	(IIF([t].[BoolValue] = 0, 1, 0) = 0 AND IIF([t].[BoolValue] = 0, 1, 0) IS NOT NULL)

