BeforeExecute
-- SqlServer.2017

SELECT
	[pp].[Value_1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 2), Round([p].[MoneyValue] / 2, 2) * 2, Round([p].[MoneyValue], 2)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [pp]
WHERE
	([pp].[Value_1] <> 0 OR [pp].[Value_1] IS NULL) AND
	([pp].[Value_1] <> 7 OR [pp].[Value_1] IS NULL)

