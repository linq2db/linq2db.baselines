-- Access.Jet.Odbc AccessODBC

SELECT DISTINCT
	IIF([gr].[Value1] IS NULL, [c_1].[ChildID], [gr].[Value1])
FROM
	[Parent] [gr]
		INNER JOIN [Child] [c_1] ON ([gr].[ParentID] = [c_1].[ParentID])

