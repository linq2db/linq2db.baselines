BeforeExecute
-- SqlCe

SELECT
	[g_1].[ParentID] as [Key_1],
	COUNT(*) as [COUNT_1]
FROM
	[Child] [g_1]
		INNER JOIN [GrandChild] [y] ON [g_1].[ParentID] = [y].[ParentID] AND [y].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [y].[ChildID] AND [y].[ChildID] IS NOT NULL
GROUP BY
	[g_1].[ParentID]

