-- SQLite.MS SQLite
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] < 0
LIMIT 1

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		CROSS JOIN (
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] < 0
			LIMIT 1
		) [t1]

