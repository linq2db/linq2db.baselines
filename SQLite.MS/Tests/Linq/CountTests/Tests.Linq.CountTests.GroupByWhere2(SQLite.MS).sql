BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	Count(*) > 2

