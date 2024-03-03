BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[g_1].[ParentID] + 1,
	Min([g_1].[ChildID]),
	Count(CASE
		WHEN [g_1].[ChildID] > 25 THEN 1
		ELSE NULL
	END)
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] > 0
GROUP BY
	[g_1].[ParentID] + 1

