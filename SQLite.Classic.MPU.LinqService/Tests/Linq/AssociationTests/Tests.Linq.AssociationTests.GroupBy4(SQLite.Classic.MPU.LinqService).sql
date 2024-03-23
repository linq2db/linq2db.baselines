BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[Year_1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', [g_1].[DateTimeValue]) as int) as [Year_1]
		FROM
			[LinqDataTypes] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Year_1]

