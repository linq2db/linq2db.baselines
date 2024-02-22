BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				1 + [ch].[ParentID] as [c1]
			FROM
				[GrandChild] [ch]
			WHERE
				[ch].[ParentID] > 0
		) [ch_1] ON [p].[ParentID] = [ch_1].[c1]
WHERE
	[ch_1].[not_null] IS NULL AND [ch_1].[not_null] IS NULL

