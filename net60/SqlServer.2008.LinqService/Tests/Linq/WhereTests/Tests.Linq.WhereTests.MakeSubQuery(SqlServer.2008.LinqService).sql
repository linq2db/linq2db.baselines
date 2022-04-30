BeforeExecute
-- SqlServer.2008

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

