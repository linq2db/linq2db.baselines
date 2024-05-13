BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 NVarChar(1) -- String
SET     @Parameter1 = 'O'

SELECT
	[i_2].[LastName]
FROM
	(
		SELECT
			IIF([i].[MiddleName] IS NULL, 'M', 'O') as [Gender],
			[i].[FirstName],
			[i].[LastName]
		FROM
			[Person] [i]
		UNION ALL
		SELECT
			IIF([i_1].[MiddleName] IS NULL, 'M', 'O') as [Gender],
			[i_1].[FirstName],
			[i_1].[LastName]
		FROM
			[Person] [i_1]
	) [i_2]
WHERE
	[i_2].[Gender] = ?
ORDER BY
	[i_2].[FirstName] DESC

