BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

