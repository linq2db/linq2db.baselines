BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + 1 = 2

