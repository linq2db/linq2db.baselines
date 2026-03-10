-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID]
		FROM
			[Child] [gr]
	) [t1]

