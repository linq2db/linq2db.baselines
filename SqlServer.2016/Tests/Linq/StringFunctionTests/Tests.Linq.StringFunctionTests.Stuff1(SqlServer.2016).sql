-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Stuff([p].[FirstName], 3, 1, N'123') = N'Jo123n' AND
	[p].[PersonID] = 1

