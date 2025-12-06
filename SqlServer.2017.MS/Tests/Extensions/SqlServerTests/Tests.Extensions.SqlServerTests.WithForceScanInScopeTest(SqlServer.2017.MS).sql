-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ForceScan)
		INNER JOIN [Child] [c_1] WITH (ForceScan) ON [p].[ParentID] = [c_1].[ParentID]

