-- SQLite.MS SQLite

SELECT
	COUNT(CASE
		WHEN [g_1].[ChildID] > 30 THEN 1
		ELSE NULL
	END),
	SUM(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END),
	MIN(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END),
	AVG(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END)
FROM
	[Child] [g_1]
WHERE
	[g_1].[ChildID] > 30
GROUP BY
	[g_1].[ParentID]

