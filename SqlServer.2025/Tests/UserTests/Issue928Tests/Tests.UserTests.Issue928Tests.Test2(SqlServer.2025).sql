BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[Key_1],
	[p2].[SUM_1]
FROM
	[Parent] [p1]
		INNER JOIN (
			SELECT
				[g_1].[ParentID] as [Key_1],
				SUM([g_1].[ParentID]) as [SUM_1]
			FROM
				[Parent] [g_1]
			WHERE
				[g_1].[ParentID] IN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
				)
			GROUP BY
				[g_1].[ParentID]
		) [p2] ON [p2].[Key_1] = [p1].[ParentID]

