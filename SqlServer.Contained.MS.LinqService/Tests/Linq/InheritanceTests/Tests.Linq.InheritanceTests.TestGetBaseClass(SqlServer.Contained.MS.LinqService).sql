BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF([x].[Value1] = 2, 1, 0),
	[x].[ParentID],
	[x].[Value1],
	IIF([x].[Value1] = 1, 1, 0)
FROM
	[Parent] [x]
WHERE
	[x].[Value1] = 1 OR [x].[Value1] = 2

