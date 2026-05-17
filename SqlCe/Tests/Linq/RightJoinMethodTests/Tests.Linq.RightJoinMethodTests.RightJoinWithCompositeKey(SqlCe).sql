-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID] AND Coalesce([p].[Value1], 0) = [c_1].[ParentID]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

