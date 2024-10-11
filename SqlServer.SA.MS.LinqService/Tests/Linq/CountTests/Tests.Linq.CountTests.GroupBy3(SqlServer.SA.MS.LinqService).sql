BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	MIN([t1].[ChildID]),
	COUNT(IIF([t1].[ChildID] > 25, 1, NULL))
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID],
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] > 0
	) [t1]
GROUP BY
	[t1].[ParentID]

