BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	[p].[Value1]
FROM
	[Parent] [p]

