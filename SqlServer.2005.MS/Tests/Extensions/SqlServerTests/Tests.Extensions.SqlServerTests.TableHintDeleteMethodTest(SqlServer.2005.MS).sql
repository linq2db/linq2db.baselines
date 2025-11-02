-- SqlServer.2005.MS SqlServer.2005

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

