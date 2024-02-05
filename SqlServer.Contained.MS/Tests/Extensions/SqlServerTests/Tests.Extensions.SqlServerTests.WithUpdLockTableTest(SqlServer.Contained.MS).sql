BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (UpdLock)

