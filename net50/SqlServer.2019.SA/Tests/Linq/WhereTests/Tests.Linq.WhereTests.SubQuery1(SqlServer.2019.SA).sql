BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
	([pp].[Value_1] IS NULL OR [pp].[Value_1] <> 0) AND
	([pp].[Value_1] IS NULL OR [pp].[Value_1] <> 7)

