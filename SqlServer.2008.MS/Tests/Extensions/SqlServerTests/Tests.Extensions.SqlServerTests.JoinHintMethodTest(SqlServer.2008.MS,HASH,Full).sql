-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		FULL HASH JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

