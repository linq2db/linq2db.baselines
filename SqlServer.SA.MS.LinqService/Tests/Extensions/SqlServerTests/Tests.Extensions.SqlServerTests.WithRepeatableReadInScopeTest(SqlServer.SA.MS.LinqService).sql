BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (RepeatableRead)
		INNER JOIN [Child] [c_1] WITH (RepeatableRead) ON [p].[ParentID] = [c_1].[ParentID]

