BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

