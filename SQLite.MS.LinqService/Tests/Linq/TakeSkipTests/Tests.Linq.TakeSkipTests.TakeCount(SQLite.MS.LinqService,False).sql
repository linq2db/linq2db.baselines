BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			[Child] [t1]
		LIMIT 5
	) [t2]

