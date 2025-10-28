BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]
WHERE
	[t1].[Key_1] > 2

