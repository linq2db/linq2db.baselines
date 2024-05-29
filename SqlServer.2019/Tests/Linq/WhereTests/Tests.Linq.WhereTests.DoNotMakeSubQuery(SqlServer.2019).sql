BeforeExecute
-- SqlServer.2019

SELECT
	[p2].[PersonID],
	[p2].[FirstName] + N''
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

