-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID] as [Key_1]
		FROM
			[Child] [g_1]
	) [t1]
WHERE
	[t1].[Key_1] > 2

