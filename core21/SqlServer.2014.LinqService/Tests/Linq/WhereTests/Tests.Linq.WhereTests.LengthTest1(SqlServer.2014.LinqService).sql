BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT (Len([nm].[MiddleName]) IS NOT NULL AND Len([nm].[MiddleName]) = 0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

