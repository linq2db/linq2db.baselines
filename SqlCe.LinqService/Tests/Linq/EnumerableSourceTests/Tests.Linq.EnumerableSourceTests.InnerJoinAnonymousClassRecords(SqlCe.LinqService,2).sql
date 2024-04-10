BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 'Janet' AS [Name]
			UNION ALL
			SELECT 'Doe' AS [Name]) [n] ON [p].[LastName] = [n].[Name]

