BeforeExecute
-- SqlServer.2008

SELECT
	[p].[PersonID],
	Coalesce([p].[FirstName], N'None'),
	Coalesce([p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

