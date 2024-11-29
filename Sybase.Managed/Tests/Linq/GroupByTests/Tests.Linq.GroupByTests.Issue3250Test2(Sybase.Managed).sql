BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(CAST(COUNT(*) AS VarChar(11)) + ' items have not been processed, e.g. #' + CAST(MIN([s].[PersonID]) AS VarChar(11))) + '.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

