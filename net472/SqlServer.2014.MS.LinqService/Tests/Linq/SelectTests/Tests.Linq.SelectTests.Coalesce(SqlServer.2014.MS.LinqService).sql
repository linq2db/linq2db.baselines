BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[PersonID],
	Coalesce([p].[FirstName], N'None'),
	Coalesce([p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

