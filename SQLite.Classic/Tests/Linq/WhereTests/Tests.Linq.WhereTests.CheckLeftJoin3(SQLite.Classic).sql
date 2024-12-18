BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				1 + [ch].[ParentID] as [ParentID],
				1 as [not_null]
			FROM
				[GrandChild] [ch]
			WHERE
				[ch].[ParentID] > 0 AND [ch].[ParentID] IS NOT NULL
		) [ch_1] ON [p].[ParentID] = [ch_1].[ParentID] AND [ch_1].[ParentID] IS NOT NULL
WHERE
	[ch_1].[not_null] IS NULL AND [ch_1].[not_null] IS NULL

