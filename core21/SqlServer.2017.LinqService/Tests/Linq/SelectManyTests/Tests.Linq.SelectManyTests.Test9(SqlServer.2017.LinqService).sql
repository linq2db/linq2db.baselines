BeforeExecute
-- SqlServer.2017

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
				INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
				INNER JOIN [LinqDataTypes] [_] ON [c_1].[ParentID] = [_].[ID]
		WHERE
			[p].[ParentID] = 1 AND [_].[ID] > 1 AND [_].[ID] > 2
	) [p_1]
		INNER JOIN [GrandChild] [g_1] ON [p_1].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID],
	[Parent] [c_2]
WHERE
	[p_1].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] = [c_2].[ParentID] AND
	[a_Child].[ChildID] = 1

