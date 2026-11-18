-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID] AND CASE
			WHEN [p].[Value1] IS NULL THEN 0
			ELSE [p].[Value1]
		END = [c_1].[ParentID])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

