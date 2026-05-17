-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p1].[FirstName],
	[p1].[PersonID],
	[p1].[LastName],
	[p1].[MiddleName],
	[p1].[Gender]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND [p1].[FirstName] LIKE Replace([p2].[FirstName], N'%', N'~%') ESCAPE N'~'

