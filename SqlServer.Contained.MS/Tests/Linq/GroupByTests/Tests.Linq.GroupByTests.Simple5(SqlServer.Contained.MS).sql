BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1]
		FROM
			[GrandChild] [g_1]
		GROUP BY
			[g_1].[ParentID],
			[g_1].[ChildID]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

