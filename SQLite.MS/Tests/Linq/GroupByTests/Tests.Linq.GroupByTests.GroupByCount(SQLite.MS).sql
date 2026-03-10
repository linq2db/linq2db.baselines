-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID]
		FROM
			[Child] [gr]
	) [t1]

