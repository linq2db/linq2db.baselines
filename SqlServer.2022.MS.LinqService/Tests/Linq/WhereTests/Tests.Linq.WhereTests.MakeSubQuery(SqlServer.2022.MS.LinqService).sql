BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

