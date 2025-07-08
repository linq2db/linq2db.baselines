BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek)

