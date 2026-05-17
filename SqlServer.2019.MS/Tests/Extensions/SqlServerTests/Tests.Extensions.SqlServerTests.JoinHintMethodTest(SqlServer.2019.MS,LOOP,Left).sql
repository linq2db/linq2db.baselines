-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		LEFT LOOP JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

