-- SqlServer.2008

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	[p].[Value1]
FROM
	[Parent] [p]

