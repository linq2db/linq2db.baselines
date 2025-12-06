-- SqlServer.2005

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ReadCommitted)
		INNER JOIN [Child] [c_1] WITH (ReadCommitted) ON [p].[ParentID] = [c_1].[ParentID]

