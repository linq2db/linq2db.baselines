BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			Date([b].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [t1]
GROUP BY
	[t1].[Key_1]

