BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(IIF([p].[FirstName] > N'Jo', 1, IIF([p].[FirstName] = N'Jo', 0, -1)) <> 0 OR IIF([p].[FirstName] > N'Jo', 1, IIF([p].[FirstName] = N'Jo', 0, -1)) IS NULL) AND
	[p].[PersonID] = 1

