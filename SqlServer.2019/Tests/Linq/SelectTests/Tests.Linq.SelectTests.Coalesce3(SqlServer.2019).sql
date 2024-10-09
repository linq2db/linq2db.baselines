BeforeExecute
-- SqlServer.2019

SELECT
	[p].[PersonID],
	Coalesce([p].[MiddleName], [p].[FirstName]),
	[p].[LastName],
	Coalesce([p].[MiddleName], [p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

