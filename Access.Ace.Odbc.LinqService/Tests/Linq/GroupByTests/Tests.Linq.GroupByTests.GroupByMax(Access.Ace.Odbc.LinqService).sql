BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	MAX([g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ChildID]

