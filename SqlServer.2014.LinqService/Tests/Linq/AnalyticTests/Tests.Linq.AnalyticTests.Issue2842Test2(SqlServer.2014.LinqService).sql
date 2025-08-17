BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[x].[FirstName],
	RANK() OVER(ORDER BY IIF([x].[PersonID] = 2, 1, 0))
FROM
	[Person] [x]

