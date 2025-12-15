-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER HASH JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

