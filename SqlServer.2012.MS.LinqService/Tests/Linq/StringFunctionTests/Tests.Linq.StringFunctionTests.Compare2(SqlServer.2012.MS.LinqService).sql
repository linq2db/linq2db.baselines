BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) > N'joh' AND [p].[PersonID] = 1

