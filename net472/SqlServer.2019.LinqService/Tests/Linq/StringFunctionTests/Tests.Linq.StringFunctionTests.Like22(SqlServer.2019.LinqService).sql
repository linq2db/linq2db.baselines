BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%H~%n%' ESCAPE N'~' AND
	[p].[PersonID] = 1

