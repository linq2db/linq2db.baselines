BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [t]
		INNER JOIN [Child] [c_1] ON [t].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ParentID] = 1

