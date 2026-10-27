-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ParentID] as [ParentID_2],
	[c_1].[ChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID])
UNION
SELECT
	[p].[ParentID],
	IIF(False, 0, NULL) as [ParentID_1],
	IIF(False, 0, NULL) as [ParentID_2],
	IIF(False, 0, NULL) as [ChildID]
FROM
	[Parent] [p]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

