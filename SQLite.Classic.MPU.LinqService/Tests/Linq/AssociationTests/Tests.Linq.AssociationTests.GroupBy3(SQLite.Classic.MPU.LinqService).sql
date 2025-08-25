BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CAST(strftime('%Y', [a_Types].[DateTimeValue]) AS INTEGER) as [Key_1]
		FROM
			[Parent] [g_1]
				LEFT JOIN [LinqDataTypes] [a_Types] ON [g_1].[ParentID] = [a_Types].[ID]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

