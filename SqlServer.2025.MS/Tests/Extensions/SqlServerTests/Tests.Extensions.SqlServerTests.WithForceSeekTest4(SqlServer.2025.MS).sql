-- SqlServer.2025.MS SqlServer.2025

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek(IX_ChildIndex([ParentID])))

