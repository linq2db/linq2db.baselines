BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

