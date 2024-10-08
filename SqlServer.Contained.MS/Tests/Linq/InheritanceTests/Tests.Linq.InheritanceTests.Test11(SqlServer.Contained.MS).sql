BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF([p].[Value1] = 2, 1, 0),
	[p].[ParentID],
	[p].[Value1],
	IIF([p].[Value1] = 1, 1, 0),
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 1 OR [p].[Value1] = 2

