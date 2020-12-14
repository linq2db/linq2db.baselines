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
	0 <= IIF([p].[FirstName] > N'55', 1, IIF([p].[FirstName] = N'55', 0, -1)) AND
	[p].[PersonID] = 1

