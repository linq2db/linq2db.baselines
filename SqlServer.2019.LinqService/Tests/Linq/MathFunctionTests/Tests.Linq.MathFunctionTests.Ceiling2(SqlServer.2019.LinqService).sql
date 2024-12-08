BeforeExecute
-- SqlServer.2019

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

