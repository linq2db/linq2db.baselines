BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex))

