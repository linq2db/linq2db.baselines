BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek)

