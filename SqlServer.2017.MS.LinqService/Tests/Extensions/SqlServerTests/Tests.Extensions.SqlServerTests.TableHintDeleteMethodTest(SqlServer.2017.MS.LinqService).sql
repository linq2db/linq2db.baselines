BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

