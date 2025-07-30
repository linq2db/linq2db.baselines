BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	BINARY_CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

