BeforeExecute
-- SqlServer.2012

SELECT
	IIF([p].[Value1] = 1, 1, 0),
	[p].[ParentID],
	[p].[Value1],
	[p].[Value1]
FROM
	[Parent] [p]

