BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CASE
		WHEN [i].[Status] = 1 THEN 1
		ELSE 0
	END
FROM
	[Test] [i]

