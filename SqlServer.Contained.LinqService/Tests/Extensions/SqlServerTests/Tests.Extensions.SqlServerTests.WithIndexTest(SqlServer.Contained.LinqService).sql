BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex), NoLock)

