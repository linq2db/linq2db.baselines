BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ReadUncommitted)
		INNER JOIN [Child] [c_1] WITH (ReadUncommitted) ON [p].[ParentID] = [c_1].[ParentID]

