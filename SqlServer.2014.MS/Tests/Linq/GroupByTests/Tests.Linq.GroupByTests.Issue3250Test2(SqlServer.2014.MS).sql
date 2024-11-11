BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	(CAST(COUNT(*) AS VarChar(11)) + N' items have not been processed, e.g. #' + CAST(MIN([s_1].[ID]) AS VarChar(11))) + N'.'
FROM
	(
		SELECT
			[s].[PersonID] as [ID]
		FROM
			[Person] [s]
		WHERE
			[s].[LastName] <> N'ERROR'
		HAVING
			COUNT(*) > 0
	) [s_1]

