BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (NoLock)
		INNER JOIN [Child] [c_1] WITH (NoLock) ON [p].[ParentID] = [c_1].[ParentID]

