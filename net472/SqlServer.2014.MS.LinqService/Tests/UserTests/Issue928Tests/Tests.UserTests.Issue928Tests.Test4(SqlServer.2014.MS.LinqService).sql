BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
			EXISTS(
				SELECT
					*
				FROM
					[Child] [ch]
				WHERE
					[ch].[ParentID] = [p].[ParentID]
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
				EXISTS(
					SELECT
						*
					FROM
						[Child] [ch_1]
					WHERE
						[ch_1].[ParentID] = [p_1].[ParentID]
				)
			GROUP BY
				[p_1].[ParentID]
		) [t1] ON [p1].[ParentID] = [t1].[p2]

