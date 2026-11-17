-- SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	[x].[X]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				CAST(1 AS INTEGER) as [X]
			UNION ALL
			SELECT
				CAST(2 AS INTEGER) as [X]
		) [x] ON 1=1

