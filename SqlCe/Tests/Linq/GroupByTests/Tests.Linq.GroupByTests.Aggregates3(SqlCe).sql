-- SqlCe

SELECT
	COUNT(CASE
		WHEN [g_1].[ChildID] > 30 THEN 1
		ELSE NULL
	END) as [Cnt],
	SUM(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END) as [Sum_1],
	MIN(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END) as [Min_1],
	MAX(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END) as [Max_1],
	AVG(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END) as [Avg_1]
FROM
	[Child] [g_1]
WHERE
	[g_1].[ChildID] > 30
GROUP BY
	[g_1].[ParentID]

