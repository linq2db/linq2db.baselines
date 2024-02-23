BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[pp_1].[MoneyValue]
FROM
	(
		SELECT
			CASE
				WHEN [pp].[MoneyValue] * 2 = Round([pp].[MoneyValue] * 2, 2) AND [pp].[MoneyValue] <> Round([pp].[MoneyValue], 2)
					THEN Round([pp].[MoneyValue] / 2, 2) * 2
				ELSE Round([pp].[MoneyValue], 2)
			END as [Value_1],
			[pp].[MoneyValue]
		FROM
			[LinqDataTypes] [pp]
	) [pp_1]
WHERE
	([pp_1].[Value_1] <> 0 OR [pp_1].[Value_1] IS NULL) AND
	([pp_1].[Value_1] <> 7 OR [pp_1].[Value_1] IS NULL)

