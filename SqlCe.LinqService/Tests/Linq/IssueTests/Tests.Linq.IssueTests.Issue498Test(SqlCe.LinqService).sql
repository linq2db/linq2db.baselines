BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[g_1].[ParentID] as [Key_1],
	COUNT(*) as [COUNT_1]
FROM
	[Child] [g_1]
		INNER JOIN [GrandChild] [y] ON [g_1].[ParentID] = [y].[ParentID] AND [g_1].[ChildID] = [y].[ChildID]
GROUP BY
	[g_1].[ParentID]

