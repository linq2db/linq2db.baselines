BeforeExecute
-- SqlServer.2014 (asynchronously)

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

