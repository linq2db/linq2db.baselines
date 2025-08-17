BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (TabLock)
		INNER JOIN [Child] [c_1] WITH (TabLock) ON [p].[ParentID] = [c_1].[ParentID]

