BeforeExecute
-- SqlServer.2019

SELECT
	[p].[PersonID],
	[p].[FirstName],
	Coalesce([p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

