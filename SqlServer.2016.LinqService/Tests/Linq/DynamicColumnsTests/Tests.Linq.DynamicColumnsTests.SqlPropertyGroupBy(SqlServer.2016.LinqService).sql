BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

