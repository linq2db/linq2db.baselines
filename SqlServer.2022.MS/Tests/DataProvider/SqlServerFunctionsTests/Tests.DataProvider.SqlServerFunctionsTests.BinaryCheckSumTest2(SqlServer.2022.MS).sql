BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	BINARY_CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

