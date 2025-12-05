-- SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, LEN([p].[FirstName] + N'.') - 2) = N'ohn' AND
	[p].[PersonID] = 1

