-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower(Substring([p].[FirstName], 2, 2)) = Lower(Substring(N'Joh', 2, 2)) AND
	[p].[PersonID] = 1

