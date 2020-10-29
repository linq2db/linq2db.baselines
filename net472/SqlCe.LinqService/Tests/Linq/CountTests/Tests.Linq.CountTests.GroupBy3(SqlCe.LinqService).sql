BeforeExecute
-- SqlCe

SELECT
	[t2].[c1],
	Min([t2].[ChildID]),
	Count([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [c1],
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] > 0
	) [t2]
		LEFT JOIN (
			SELECT
				[ch_1].[ParentID]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ChildID] > 25 AND [ch_1].[ParentID] > 0
			GROUP BY
				[ch_1].[ParentID]
		) [t1] ON [t2].[c1] = [t1].[ParentID] + 1
GROUP BY
	[t2].[c1]

