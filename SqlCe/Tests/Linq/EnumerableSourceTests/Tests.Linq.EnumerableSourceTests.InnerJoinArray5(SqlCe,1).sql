-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT 'Janet' AS [item], 'Janet' AS [item0]
		UNION ALL
		SELECT 'Doe' AS [item], 'Doe' AS [item0]
		UNION ALL
		SELECT 'John' AS [item], 'John' AS [item0]
		UNION ALL
		SELECT 'Doe' AS [item], 'Doe' AS [item0]) [n]
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

