BeforeExecute
-- SqlCe (asynchronously)

SELECT
	SUM([g_1].[ParentID]) as [Sum_1]
FROM
	[Child] [g_1]
		LEFT JOIN [Parent] [p] ON [g_1].[ParentID] = [p].[ParentID]
GROUP BY
	[g_1].[ChildID]

