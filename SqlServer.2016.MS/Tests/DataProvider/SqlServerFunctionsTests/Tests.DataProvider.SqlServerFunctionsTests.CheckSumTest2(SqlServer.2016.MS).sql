-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

