BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[pp_1].[MoneyValue]
FROM
	(
		SELECT
			IIF([pp].[MoneyValue] * 2 = Round([pp].[MoneyValue] * 2, 2) AND [pp].[MoneyValue] <> Round([pp].[MoneyValue], 2), Round([pp].[MoneyValue] / 2, 2) * 2, Round([pp].[MoneyValue], 2)) as [Value_1],
			[pp].[MoneyValue]
		FROM
			[LinqDataTypes] [pp]
	) [pp_1]
WHERE
	([pp_1].[Value_1] <> 0 OR [pp_1].[Value_1] IS NULL) AND
	([pp_1].[Value_1] <> 7 OR [pp_1].[Value_1] IS NULL)

