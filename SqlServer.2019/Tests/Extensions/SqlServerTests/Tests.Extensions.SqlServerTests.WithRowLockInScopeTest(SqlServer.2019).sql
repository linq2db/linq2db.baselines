-- SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (RowLock)
		INNER JOIN [Child] [c_1] WITH (RowLock) ON [p].[ParentID] = [c_1].[ParentID]

