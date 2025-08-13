BeforeExecute
-- SqlCe

SELECT
	[p1].[FirstName],
	[p1].[PersonID] as [ID],
	[p1].[LastName],
	[p1].[MiddleName],
	[p1].[Gender],
	[p2].[FirstName] as [FirstName_1],
	[p2].[PersonID] as [ID_1],
	[p2].[LastName] as [LastName_1],
	[p2].[MiddleName] as [MiddleName_1],
	[p2].[Gender] as [Gender_1]
FROM
	[Person] [p1]
		INNER JOIN [Person] [p2] ON [p1].[MiddleName] = [p2].[MiddleName]

