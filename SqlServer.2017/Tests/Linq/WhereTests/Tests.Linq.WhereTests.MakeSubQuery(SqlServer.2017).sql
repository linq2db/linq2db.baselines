BeforeExecute
-- SqlServer.2017

SELECT
	[p].[PersonID] + 0,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + 1 = 2

