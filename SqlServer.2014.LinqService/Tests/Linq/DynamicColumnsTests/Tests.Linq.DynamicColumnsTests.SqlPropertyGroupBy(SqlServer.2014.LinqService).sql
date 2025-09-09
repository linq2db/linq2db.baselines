BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

