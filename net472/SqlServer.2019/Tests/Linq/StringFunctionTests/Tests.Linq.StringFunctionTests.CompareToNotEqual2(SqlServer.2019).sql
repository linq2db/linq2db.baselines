BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(0 <> IIF([p].[FirstName] > N'Jo', 1, IIF([p].[FirstName] = N'Jo', 0, -1)) OR IIF([p].[FirstName] > N'Jo', 1, IIF([p].[FirstName] = N'Jo', 0, -1)) IS NULL) AND
	[p].[PersonID] = 1

