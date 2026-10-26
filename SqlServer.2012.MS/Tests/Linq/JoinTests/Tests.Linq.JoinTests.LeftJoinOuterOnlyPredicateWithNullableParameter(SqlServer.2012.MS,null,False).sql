-- SqlServer.2012.MS SqlServer.2012
SELECT
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [p] ON 1 = 0

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

