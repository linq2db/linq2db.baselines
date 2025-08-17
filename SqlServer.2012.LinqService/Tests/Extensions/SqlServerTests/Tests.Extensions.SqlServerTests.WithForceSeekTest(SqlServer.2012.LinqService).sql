BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek)

