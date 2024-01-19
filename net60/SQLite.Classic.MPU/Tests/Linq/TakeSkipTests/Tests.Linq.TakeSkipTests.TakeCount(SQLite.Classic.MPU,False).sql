BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		LIMIT 5
	) [t2]

