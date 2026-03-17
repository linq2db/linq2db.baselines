-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] MOD 2,
	[x].[ChildID] DESC

