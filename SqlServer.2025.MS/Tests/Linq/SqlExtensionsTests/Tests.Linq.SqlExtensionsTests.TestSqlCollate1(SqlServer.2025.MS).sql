-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	N'1' + [t1].[FirstName] COLLATE Albanian_CI_AS + N'2'

