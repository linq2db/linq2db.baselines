BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[g_2].[ParentID],
	Min([g_2].[ChildID]),
	Count(IIF([g_2].[ChildID] > 25, 1, NULL))
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

