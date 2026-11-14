-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

