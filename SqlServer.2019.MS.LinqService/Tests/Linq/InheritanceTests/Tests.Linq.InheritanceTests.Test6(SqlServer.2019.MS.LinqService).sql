BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	IIF([p].[Value1] = 2, 1, 0),
	[p].[ParentID],
	[p].[Value1],
	IIF([p].[Value1] = 1, 1, 0)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 1 OR [p].[Value1] = 2

