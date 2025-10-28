BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

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

