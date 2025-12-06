-- SqlCe

SELECT
	[g_1].[ParentID] as [Key_1]
FROM
	[Child] [gc]
		INNER JOIN [GrandChild] [g_1] ON [gc].[ParentID] = [g_1].[ParentID] AND [gc].[ChildID] = [g_1].[ChildID]
GROUP BY
	[g_1].[ParentID]

