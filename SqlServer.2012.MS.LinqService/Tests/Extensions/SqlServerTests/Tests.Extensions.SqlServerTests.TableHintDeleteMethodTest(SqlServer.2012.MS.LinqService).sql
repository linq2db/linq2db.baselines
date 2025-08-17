BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

