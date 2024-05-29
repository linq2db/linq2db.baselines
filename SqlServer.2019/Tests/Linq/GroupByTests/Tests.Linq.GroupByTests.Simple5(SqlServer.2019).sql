BeforeExecute
-- SqlServer.2019

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[GrandChild] [g_1]
		GROUP BY
			[g_1].[ParentID],
			[g_1].[ChildID]
	) [g_2]
GROUP BY
	[g_2].[ParentID]

