-- SqlServer.2025

SELECT
	[p].[LastName] + N', ' + [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = N'Pupkin, John'

