BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[x].[FirstName],
	RANK() OVER(ORDER BY IIF([x].[PersonID] = 2, 1, 0))
FROM
	[Person] [x]

