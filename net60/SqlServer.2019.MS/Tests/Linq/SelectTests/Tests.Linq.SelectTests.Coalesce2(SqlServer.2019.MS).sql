BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[PersonID],
	Coalesce([p].[MiddleName], Coalesce([p].[FirstName], N'None')),
	Coalesce([p].[LastName], Coalesce([p].[FirstName], N'None')),
	Coalesce([p].[MiddleName], Coalesce([p].[MiddleName], N'None'))
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

