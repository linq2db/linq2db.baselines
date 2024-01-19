BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ReadCommittedLock)
		INNER JOIN [Child] [c_1] WITH (ReadCommittedLock) ON [p].[ParentID] = [c_1].[ParentID]

