BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	LEN([nm].[FirstName] + N'.') <> 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

