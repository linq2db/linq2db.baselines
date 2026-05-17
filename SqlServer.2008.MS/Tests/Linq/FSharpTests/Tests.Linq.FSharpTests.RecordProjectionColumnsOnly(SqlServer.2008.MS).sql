-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	N'ибн Алёша'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

