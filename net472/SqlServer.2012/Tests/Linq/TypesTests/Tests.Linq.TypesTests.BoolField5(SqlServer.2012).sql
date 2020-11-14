BeforeExecute
-- SqlServer.2012

SELECT
	[p].[MoneyValue]
FROM
	(
		SELECT
			IIF([t].[BoolValue] = 0, 1, 0) as [b],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[b] = 0

