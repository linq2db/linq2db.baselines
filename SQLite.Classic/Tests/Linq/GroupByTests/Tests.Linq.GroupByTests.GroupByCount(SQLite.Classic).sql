BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[gr].[ParentID]
		FROM
			[Child] [gr]
		GROUP BY
			[gr].[ParentID]
	) [t1]

