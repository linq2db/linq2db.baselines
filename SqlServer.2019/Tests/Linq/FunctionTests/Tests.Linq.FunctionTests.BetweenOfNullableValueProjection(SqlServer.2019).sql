-- SqlServer.2019
SELECT
	[p].[ParentID],
	IIF([p].[Value1] BETWEEN 1 AND 3, 1, 0),
	IIF([p].[Value1] NOT BETWEEN 1 AND 3, 1, 0)
FROM
	[Parent] [p]

-- SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

