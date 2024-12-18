BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
				INNER JOIN [GrandChild] [g_1] ON [a_Children].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [a_Children].[ChildID] = [g_1].[ChildID] AND [g_1].[ChildID] IS NOT NULL
		WHERE
			[p1].[ParentID] = [a_Children].[ParentID] AND
			[g_1].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[g_1].[ParentID] IS NOT NULL AND
			[g_1].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[g_1].[ParentID] IS NOT NULL
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > -1 AND [p1].[ParentID] > -2

