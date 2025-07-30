BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(CAST(COUNT(*) AS NVarChar(11)) + ' items have not been processed, e.g. #' + Coalesce(CAST(MIN([g_1].[PersonID]) AS NVarChar(11)), '')) + '.'
FROM
	[Person] [g_1]
WHERE
	[g_1].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

