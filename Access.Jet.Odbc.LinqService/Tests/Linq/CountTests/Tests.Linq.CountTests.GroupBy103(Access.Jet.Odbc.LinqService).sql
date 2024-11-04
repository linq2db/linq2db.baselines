BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(IIF([g_1].[ChildID] > 20, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID],
	[g_1].[ChildID]

