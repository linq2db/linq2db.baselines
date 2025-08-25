BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

