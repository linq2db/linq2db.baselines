BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

