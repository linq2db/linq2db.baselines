-- SqlServer.2017

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

