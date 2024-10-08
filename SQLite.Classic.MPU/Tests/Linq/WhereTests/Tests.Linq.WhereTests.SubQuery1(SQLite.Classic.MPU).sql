BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[pp_1].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN [pp].[MoneyValue] * 2 = ROUND([pp].[MoneyValue] * 2, 2) AND [pp].[MoneyValue] <> ROUND([pp].[MoneyValue], 2)
					THEN ROUND([pp].[MoneyValue] / 2, 2) * 2
				ELSE ROUND([pp].[MoneyValue], 2)
			END as [Value_1]
		FROM
			[LinqDataTypes] [pp]
	) [pp_1]
WHERE
	[pp_1].[Value_1] <> 0 AND [pp_1].[Value_1] <> 7

