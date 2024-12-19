BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

