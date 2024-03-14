BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

