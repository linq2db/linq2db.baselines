-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Ceiling([p].[MoneyValue]) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

