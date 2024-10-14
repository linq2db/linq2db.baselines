BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF([p].[Value1] = 2, 1, 0),
	[p].[ParentID],
	[p].[Value1],
	IIF([p].[Value1] = 1, 1, 0)
FROM
	[Parent] [p]

