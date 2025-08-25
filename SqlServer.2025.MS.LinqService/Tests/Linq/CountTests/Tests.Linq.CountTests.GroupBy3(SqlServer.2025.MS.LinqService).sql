BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[g_2].[ParentID],
	MIN([g_2].[ChildID]),
	COUNT(IIF([g_2].[ChildID] > 25, 1, NULL))
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID],
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] > 0
	) [g_2]
GROUP BY
	[g_2].[ParentID]

