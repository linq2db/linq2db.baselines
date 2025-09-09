BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex, IX_ChildIndex))

