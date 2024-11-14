BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(CAST(COUNT(*) AS VarChar(11)) + ' items have not been processed, e.g. #' + CAST(MIN([s_1].[ID]) AS VarChar(11))) + '.'
FROM
	(
		SELECT
			[s].[PersonID] as [ID]
		FROM
			[Person] [s]
		WHERE
			[s].[LastName] <> 'ERROR'
		HAVING
			COUNT(*) > 0
	) [s_1]

