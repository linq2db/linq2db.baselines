BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ReadPast)
		INNER JOIN [Child] [c_1] WITH (ReadPast) ON [p].[ParentID] = [c_1].[ParentID]

