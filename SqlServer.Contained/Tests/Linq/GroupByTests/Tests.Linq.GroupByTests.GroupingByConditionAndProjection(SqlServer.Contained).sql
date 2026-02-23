-- SqlServer.Contained SqlServer.2019

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[ChildID] % 2 = 0, [g_1].[ParentID], NULL) as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

