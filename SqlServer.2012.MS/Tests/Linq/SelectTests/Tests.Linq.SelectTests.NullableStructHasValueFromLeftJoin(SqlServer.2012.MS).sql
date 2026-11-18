-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
WHERE
	[p].[ParentID] = 5

