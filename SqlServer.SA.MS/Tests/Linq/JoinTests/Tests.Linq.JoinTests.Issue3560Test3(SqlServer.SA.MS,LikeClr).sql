-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[ParentID],
	[p2].[Value1]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p2] ON [p1].[Value1] = [p2].[Value1] OR [p1].[Value1] IS NULL AND [p2].[Value1] IS NULL

