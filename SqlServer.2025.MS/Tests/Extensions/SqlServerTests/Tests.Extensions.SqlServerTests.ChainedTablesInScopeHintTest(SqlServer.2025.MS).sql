-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (UpdLock, RowLock, HoldLock)
		INNER JOIN [Child] [c_1] WITH (UpdLock, RowLock, HoldLock) ON [p].[ParentID] = [c_1].[ParentID]

