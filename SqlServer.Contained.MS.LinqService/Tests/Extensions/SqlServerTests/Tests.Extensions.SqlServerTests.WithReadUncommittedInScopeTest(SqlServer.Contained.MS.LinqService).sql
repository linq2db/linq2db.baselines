BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ReadUncommitted)
		INNER JOIN [Child] [c_1] WITH (ReadUncommitted) ON [p].[ParentID] = [c_1].[ParentID]

