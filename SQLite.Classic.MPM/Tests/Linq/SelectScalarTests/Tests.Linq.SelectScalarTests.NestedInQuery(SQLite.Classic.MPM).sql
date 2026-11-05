-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ParentID] = [p].[ParentID]
			)
	) > 1
ORDER BY
	[p].[ParentID]

