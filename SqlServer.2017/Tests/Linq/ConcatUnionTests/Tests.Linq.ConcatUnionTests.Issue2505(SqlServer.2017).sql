BeforeExecute
-- SqlServer.2017

SELECT
	[i_2].[LastName]
FROM
	(
		SELECT
			IIF([i].[MiddleName] IS NULL, N'M', N'O') as [Gender],
			[i].[FirstName],
			[i].[PersonID] as [ID],
			[i].[LastName],
			[i].[MiddleName],
			[i].[Gender] as [Gender_1]
		FROM
			[Person] [i]
		UNION ALL
		SELECT
			IIF([i_1].[MiddleName] IS NULL, N'M', N'O') as [Gender],
			[i_1].[FirstName],
			[i_1].[PersonID] as [ID],
			[i_1].[LastName],
			[i_1].[MiddleName],
			[i_1].[Gender] as [Gender_1]
		FROM
			[Person] [i_1]
	) [i_2]
WHERE
	[i_2].[Gender] = N'O'
ORDER BY
	[i_2].[FirstName] DESC

