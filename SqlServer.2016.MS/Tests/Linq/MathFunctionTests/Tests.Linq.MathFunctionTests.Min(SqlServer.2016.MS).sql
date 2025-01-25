BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] <= 5, [t].[MoneyValue], 5) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

