-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ReadPast)
		INNER JOIN [Child] [c_1] WITH (ReadPast) ON [p].[ParentID] = [c_1].[ParentID]

