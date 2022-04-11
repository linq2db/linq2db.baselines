BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[FirstName],
	[t1].[LastName],
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName],
	[t1].[LastName]
ORDER BY
	[t1].[FirstName]

