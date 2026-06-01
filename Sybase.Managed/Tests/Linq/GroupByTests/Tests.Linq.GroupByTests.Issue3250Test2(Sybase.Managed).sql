-- Sybase.Managed Sybase

SELECT
	CASE WHEN CAST(COUNT(*) AS NVarChar(11)) IS NULL OR ' items have not been processed, e.g. #' IS NULL OR Coalesce(CAST(MIN([s].[PersonID]) AS NVarChar(11)), '') IS NULL OR '.' IS NULL THEN NULL ELSE CAST(COUNT(*) AS NVarChar(11)) || ' items have not been processed, e.g. #' || Coalesce(CAST(MIN([s].[PersonID]) AS NVarChar(11)), '') || '.' END
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

