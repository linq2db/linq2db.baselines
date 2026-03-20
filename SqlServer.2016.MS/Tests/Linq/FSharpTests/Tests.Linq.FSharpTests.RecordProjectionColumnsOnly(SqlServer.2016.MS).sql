-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	N'ибн Алёша'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

