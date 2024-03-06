BeforeExecute
-- SqlServer.2017

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

