BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (PagLock)

