-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (UpdLock)

