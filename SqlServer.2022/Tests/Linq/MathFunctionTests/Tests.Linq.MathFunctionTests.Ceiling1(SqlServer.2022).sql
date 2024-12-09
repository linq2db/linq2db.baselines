BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Ceiling(-([p].[MoneyValue] + 1)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

