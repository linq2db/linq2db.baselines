BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] DESC,
	[x].[ChildID] MOD 2

