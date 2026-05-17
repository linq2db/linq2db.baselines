-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex, IX_ChildIndex))

