BeforeExecute
-- SqlServer.2016

SELECT
	IIF([t1].[Value1] = 1, 1, 0),
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[Value1]
FROM
	[Parent] [t1]

