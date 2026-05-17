-- SqlCe

SELECT
	COUNT(*) as [ID1],
	MAX([g_1].[ChildID]) as [ID2]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

