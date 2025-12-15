-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] MOD 2,
	[t1].[ChildID]

