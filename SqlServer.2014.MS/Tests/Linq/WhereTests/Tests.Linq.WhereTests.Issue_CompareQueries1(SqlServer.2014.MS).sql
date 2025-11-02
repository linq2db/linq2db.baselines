-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 2)

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	1 = 0

