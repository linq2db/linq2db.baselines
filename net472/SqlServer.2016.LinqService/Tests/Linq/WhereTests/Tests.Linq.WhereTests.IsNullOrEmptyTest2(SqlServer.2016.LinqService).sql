BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	([nm].[FirstName] IS NOT NULL AND Len([nm].[FirstName]) <> 0)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

