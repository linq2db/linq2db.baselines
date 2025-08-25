BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[p2].[PersonID],
	[p2].[FirstName] + N''
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

