BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[ParentID],
	[p2].[SUM_1]
FROM
	[Parent] [p1]
		LEFT JOIN (
			SELECT
				[o].[ParentID],
				SUM([o].[ParentID]) as [SUM_1]
			FROM
				[Parent] [o]
			WHERE
				[o].[ParentID] IN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
				)
			GROUP BY
				[o].[ParentID]
		) [p2] ON [p2].[ParentID] = [p1].[ParentID]

