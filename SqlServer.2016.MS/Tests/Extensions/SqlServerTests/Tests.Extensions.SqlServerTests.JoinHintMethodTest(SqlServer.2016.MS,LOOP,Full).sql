-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		FULL LOOP JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

