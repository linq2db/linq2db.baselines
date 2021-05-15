BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

