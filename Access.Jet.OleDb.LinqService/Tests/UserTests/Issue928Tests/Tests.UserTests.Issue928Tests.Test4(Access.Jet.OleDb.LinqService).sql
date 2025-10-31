BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Key_1],
	[t1].[Sum_1],
	[p2].[Key_1],
	[p2].[Sum_1]
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1],
			SUM([g_1].[ParentID]) as [Sum_1]
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
	) [t1]
		LEFT JOIN (
			SELECT
				[g_2].[ParentID] as [Key_1],
				SUM([g_2].[ParentID]) as [Sum_1]
			FROM
				[Parent] [g_2]
			WHERE
				[g_2].[ParentID] IN (
					SELECT
						[ch_1].[ParentID]
					FROM
						[Child] [ch_1]
				)
			GROUP BY
				[g_2].[ParentID]
		) [p2] ON ([t1].[Key_1] = [p2].[Key_1])

