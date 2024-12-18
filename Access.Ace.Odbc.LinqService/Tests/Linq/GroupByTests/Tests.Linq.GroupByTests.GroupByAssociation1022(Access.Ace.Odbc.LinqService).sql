BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[a_Parent].[Value1]
FROM
	[GrandChild] [g_1]
		INNER JOIN [Parent] [a_Parent] ON ([g_1].[ParentID] = [a_Parent].[ParentID])
GROUP BY
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
HAVING
	COUNT(IIF([g_1].[ChildID] >= 20 AND [g_1].[ChildID] IS NOT NULL, 1, NULL)) > 2 AND
	COUNT(IIF([g_1].[ChildID] >= 20 AND [g_1].[ChildID] IS NOT NULL, 1, NULL)) IS NOT NULL AND
	SUM(IIF([g_1].[ChildID] >= 19 AND [g_1].[ChildID] IS NOT NULL, [g_1].[ParentID], NULL)) > 0 AND
	SUM(IIF([g_1].[ChildID] >= 19 AND [g_1].[ChildID] IS NOT NULL, [g_1].[ParentID], NULL)) IS NOT NULL

