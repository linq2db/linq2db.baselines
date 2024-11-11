BeforeExecute
-- SqlCe

SELECT
	(CAST(COUNT(*) AS NVarChar(11)) + ' items have not been processed, e.g. #' + CAST(MIN([s_1].[ID]) AS NVarChar(11))) + '.' as [c1]
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

