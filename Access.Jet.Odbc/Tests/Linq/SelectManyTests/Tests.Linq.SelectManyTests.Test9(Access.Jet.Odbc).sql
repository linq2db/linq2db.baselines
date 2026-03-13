-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	((
		SELECT
			[t1].[ParentID],
			[c_2].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT DISTINCT
					[p].[ParentID],
					[p].[Value1]
				FROM
					([Parent] [p]
						INNER JOIN [GrandChild] [c_1] ON ([p].[ParentID] = [c_1].[ParentID]))
						INNER JOIN [LinqDataTypes] [t] ON ([c_1].[ParentID] = [t].[ID])
				WHERE
					[t].[ID] > 1 AND [t].[ID] > 2 AND [p].[ParentID] = 1
			) [t1],
			[Parent] [c_2]
	) [cross_1]
		INNER JOIN [GrandChild] [g_1] ON ([cross_1].[ParentID] = [g_1].[ParentID]))
		INNER JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID])
WHERE
	[cross_1].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] = [cross_1].[ParentID_1] AND
	[a_Child].[ChildID] = 1
ORDER BY
	[cross_1].[ParentID]

