BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

