BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_1].[c2]
FROM
	(
		SELECT
			[c_1].[ParentID] as [Key_1],
			COUNT(*) as [c1],
			COUNT(*) as [c2]
		FROM
			[Child] [c_1]
		GROUP BY
			[c_1].[ParentID]
		HAVING
			[c_1].[ParentID] > 1
	) [g_1]
WHERE
	[g_1].[Key_1] > 1 AND [g_1].[c1] > 1

