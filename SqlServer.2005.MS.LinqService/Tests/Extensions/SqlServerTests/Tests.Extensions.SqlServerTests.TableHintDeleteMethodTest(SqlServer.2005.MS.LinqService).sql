BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

