BeforeExecute
-- SqlServer.2019

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

