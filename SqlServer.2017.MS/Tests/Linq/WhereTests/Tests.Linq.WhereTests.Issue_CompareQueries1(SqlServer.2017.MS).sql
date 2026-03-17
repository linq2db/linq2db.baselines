-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 2)

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	1 = 0

