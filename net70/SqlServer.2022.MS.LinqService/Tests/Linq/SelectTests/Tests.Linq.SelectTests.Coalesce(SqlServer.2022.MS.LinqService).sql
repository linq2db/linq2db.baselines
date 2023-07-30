BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[PersonID],
	Coalesce([p].[FirstName], N'None'),
	Coalesce([p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

