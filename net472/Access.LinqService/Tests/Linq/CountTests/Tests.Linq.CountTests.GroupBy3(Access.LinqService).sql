BeforeExecute
-- Access AccessOleDb

SELECT
	[ch_3].[ParentID],
	Min([ch_3].[ChildID]),
	Count([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID],
			[ch].[ChildID]
		FROM
			[Child] [ch]
	) [ch_3]
		LEFT JOIN (
			SELECT
				[ch_2].[ParentID]
			FROM
				(
					SELECT
						[ch_1].[ParentID] + 1 as [ParentID],
						[ch_1].[ChildID]
					FROM
						[Child] [ch_1]
				) [ch_2]
			WHERE
				[ch_2].[ChildID] > 25 AND [ch_2].[ParentID] - 1 > 0
			GROUP BY
				[ch_2].[ParentID]
		) [t1] ON ([ch_3].[ParentID] = [t1].[ParentID])
WHERE
	[ch_3].[ParentID] - 1 > 0
GROUP BY
	[ch_3].[ParentID]

