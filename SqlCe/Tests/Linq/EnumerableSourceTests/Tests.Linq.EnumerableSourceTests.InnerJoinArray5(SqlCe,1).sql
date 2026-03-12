-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT 'Janet' AS [item]
		UNION ALL
		SELECT 'Doe' AS [item]
		UNION ALL
		SELECT 'John' AS [item]
		UNION ALL
		SELECT 'Doe' AS [item]) [n]
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

