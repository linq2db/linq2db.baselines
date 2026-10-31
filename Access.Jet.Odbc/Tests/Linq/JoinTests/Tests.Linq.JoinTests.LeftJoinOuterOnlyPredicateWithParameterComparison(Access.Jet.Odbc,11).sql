-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 11

SELECT
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [p] ON ([p].[Value1] = IIF([c_1].[ChildID] <> ?, [c_1].[ParentID], IIF([c_1].[ParentID] IS NULL, [c_1].[ParentID], NULL)))

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

