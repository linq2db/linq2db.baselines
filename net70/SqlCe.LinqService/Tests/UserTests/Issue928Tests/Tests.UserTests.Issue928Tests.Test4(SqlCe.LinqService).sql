BeforeExecute
-- SqlCe

SELECT
	[p1].[ParentID],
	[p1].[Sum_1],
	[t1].[p2],
	[t1].[Sum_1]
FROM
	(
		SELECT
			[p].[ParentID],
			Sum([p].[ParentID]) as [Sum_1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] IN (
				SELECT
					[ch].[ParentID]
				FROM
					[Child] [ch]
			)
		GROUP BY
			[p].[ParentID]
	) [p1]
		LEFT JOIN (
			SELECT
				[p_1].[ParentID] as [p2],
				Sum([p_1].[ParentID]) as [Sum_1]
			FROM
				[Parent] [p_1]
			WHERE
				[p_1].[ParentID] IN (
					SELECT
						[ch_1].[ParentID]
					FROM
						[Child] [ch_1]
				)
			GROUP BY
				[p_1].[ParentID]
		) [t1] ON [p1].[ParentID] = [t1].[p2]

