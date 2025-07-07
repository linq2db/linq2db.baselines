BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	LEN([nm].[MiddleName] + N'.') - 1 <> 0 OR [nm].[MiddleName] IS NULL

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

