-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (XLock)
		INNER JOIN [Child] [c_1] WITH (XLock) ON [p].[ParentID] = [c_1].[ParentID]

