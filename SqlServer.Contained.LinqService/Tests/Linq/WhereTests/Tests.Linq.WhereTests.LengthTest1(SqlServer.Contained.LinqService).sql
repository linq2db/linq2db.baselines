BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	LEN([nm].[MiddleName] + N'.') <> 1 OR [nm].[MiddleName] IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

