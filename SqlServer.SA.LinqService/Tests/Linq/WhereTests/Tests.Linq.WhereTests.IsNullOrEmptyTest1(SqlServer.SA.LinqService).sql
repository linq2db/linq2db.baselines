BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR LEN([nm].[MiddleName] + N'.') = 1)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

