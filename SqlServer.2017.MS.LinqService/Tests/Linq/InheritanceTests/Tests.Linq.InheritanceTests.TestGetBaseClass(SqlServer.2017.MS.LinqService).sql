BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF([x].[Value1] = 2, 1, 0),
	[x].[ParentID],
	[x].[Value1],
	IIF([x].[Value1] = 1, 1, 0)
FROM
	[Parent] [x]
WHERE
	[x].[Value1] = 1 OR [x].[Value1] = 2

