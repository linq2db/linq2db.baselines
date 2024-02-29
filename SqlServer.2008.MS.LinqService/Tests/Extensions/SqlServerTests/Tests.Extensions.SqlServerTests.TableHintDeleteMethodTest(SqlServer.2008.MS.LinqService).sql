BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [p]
FROM
	[Child] [p] WITH (NoLock)
WHERE
	[p].[ParentID] < -10000

