-- Sybase.Managed Sybase

SELECT
	CASE WHEN CAST([g_2].[Message] AS NVarChar(11)) IS NULL OR ' items have not been processed, e.g. #' IS NULL OR Coalesce(CAST([g_2].[Message_1] AS NVarChar(11)), '') IS NULL OR '.' IS NULL THEN NULL ELSE CAST([g_2].[Message] AS NVarChar(11)) + ' items have not been processed, e.g. #' + Coalesce(CAST([g_2].[Message_1] AS NVarChar(11)), '') + '.' END
FROM
	(
		SELECT
			COUNT(*) as [Message],
			MIN([g_1].[PersonID]) as [Message_1]
		FROM
			[Person] [g_1]
		WHERE
			[g_1].[LastName] <> 'ERROR'
	) [g_2]
WHERE
	[g_2].[Message] > 0

