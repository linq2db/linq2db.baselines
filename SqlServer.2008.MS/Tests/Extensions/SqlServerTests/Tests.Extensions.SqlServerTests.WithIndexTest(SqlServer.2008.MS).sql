-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex), NoLock)

