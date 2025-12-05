-- SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(LEN([p].[FirstName] + N'.') = 3, [p].[FirstName] + N'123', Stuff([p].[FirstName], 3, 0, N'123')) = N'Jo123hn' AND
	[p].[PersonID] = 1

