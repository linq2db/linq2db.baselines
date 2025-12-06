-- SqlCe

SELECT
	COUNT(CASE
		WHEN [g_1].[ChildID] > 30 THEN 1
		ELSE NULL
	END) as [Count_1],
	SUM(CASE
		WHEN [g_1].[ChildID] > 30 THEN [g_1].[ChildID]
		ELSE NULL
	END) as [Sum_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

