BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[g_2].[Year_1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', [a_Types].[DateTimeValue]) as int) as [Year_1]
		FROM
			[Parent] [g_1]
				LEFT JOIN [LinqDataTypes] [a_Types] ON [g_1].[ParentID] = [a_Types].[ID]
	) [g_2]
GROUP BY
	[g_2].[Year_1]

