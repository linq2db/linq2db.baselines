BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || Coalesce(MIN([g_1].[PersonID]), '')) || '.'
FROM
	[Person] [g_1]
WHERE
	[g_1].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

