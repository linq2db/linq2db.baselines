BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	COUNT(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

