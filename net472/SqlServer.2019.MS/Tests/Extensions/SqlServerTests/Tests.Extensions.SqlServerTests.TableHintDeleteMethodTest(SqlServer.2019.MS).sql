BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

