BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Key_1],
	[t1].[p1],
	[p2].[Key_1],
	[p2].[Sum_1]
FROM
	(
		SELECT
			[p1].[ParentID] as [Key_1],
			SUM([p1].[ParentID]) as [p1]
		FROM
			[Parent] [p1]
		WHERE
			[p1].[ParentID] IN (
				SELECT
					[ch].[ParentID]
				FROM
					[Child] [ch]
			)
		GROUP BY
			[p1].[ParentID]
	) [t1]
		LEFT JOIN (
			SELECT
				[g_1].[ParentID] as [Key_1],
				SUM([g_1].[ParentID]) as [Sum_1]
			FROM
				[Parent] [g_1]
			WHERE
				[g_1].[ParentID] IN (
					SELECT
						[ch_1].[ParentID]
					FROM
						[Child] [ch_1]
				)
			GROUP BY
				[g_1].[ParentID]
		) [p2] ON [t1].[Key_1] = [p2].[Key_1]

