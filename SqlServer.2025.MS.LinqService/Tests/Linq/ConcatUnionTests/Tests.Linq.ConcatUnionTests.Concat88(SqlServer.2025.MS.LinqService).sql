BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[Value1],
	[c_2].[ParentID]
FROM
	[Parent] [c_2]

