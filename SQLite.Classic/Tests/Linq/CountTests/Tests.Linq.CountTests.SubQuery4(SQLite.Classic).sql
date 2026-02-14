-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Parent] [p1]
		WHERE
			[p1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

