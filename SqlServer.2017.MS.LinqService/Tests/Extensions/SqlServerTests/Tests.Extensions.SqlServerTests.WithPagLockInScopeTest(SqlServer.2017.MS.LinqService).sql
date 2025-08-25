BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (PagLock)
		INNER JOIN [Child] [c_1] WITH (PagLock) ON [p].[ParentID] = [c_1].[ParentID]

