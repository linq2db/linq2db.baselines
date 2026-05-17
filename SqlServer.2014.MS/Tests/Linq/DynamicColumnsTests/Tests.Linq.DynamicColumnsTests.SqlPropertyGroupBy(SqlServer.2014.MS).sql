-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

