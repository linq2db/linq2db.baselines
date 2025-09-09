BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[c_2].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT DISTINCT
					[p].[ParentID],
					[p].[Value1]
				FROM
					[Parent] [p]
						INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
						INNER JOIN [LinqDataTypes] [t] ON [c_1].[ParentID] = [t].[ID]
				WHERE
					[t].[ID] > 1 AND [t].[ID] > 2 AND [p].[ParentID] = 1
			) [t1],
			[Parent] [c_2]
	) [sub]
		INNER JOIN [GrandChild] [g_1] ON [sub].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
WHERE
	[sub].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] = [sub].[ParentID_1] AND
	[a_Child].[ChildID] = 1
ORDER BY
	[sub].[ParentID]

