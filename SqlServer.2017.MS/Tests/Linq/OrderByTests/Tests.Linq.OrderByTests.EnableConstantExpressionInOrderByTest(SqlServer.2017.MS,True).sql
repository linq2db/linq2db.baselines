-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[PersonID],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 3)
ORDER BY
	1,
	[p].[LastName]

