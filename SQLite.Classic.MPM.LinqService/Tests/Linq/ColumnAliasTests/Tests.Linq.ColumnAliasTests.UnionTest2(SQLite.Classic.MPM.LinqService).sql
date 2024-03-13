BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[ParentID] > 1

