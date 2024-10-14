BeforeExecute
-- SqlServer.2014

SELECT
	IIF([p].[Value1] = 1, 1, 0),
	[p].[ParentID],
	[p].[Value1],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] <> 0 AND [p].[Value1] <> 1

