BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
	[p].[b] = 1

