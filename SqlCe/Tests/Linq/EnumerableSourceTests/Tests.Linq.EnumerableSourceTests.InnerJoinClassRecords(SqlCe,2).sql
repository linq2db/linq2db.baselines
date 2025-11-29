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
			SELECT 'Janet' AS [FirstName], 1 AS [ID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]
			UNION ALL
			SELECT 'Doe' AS [FirstName], 2 AS [ID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]) [n] ON [p].[PersonID] = [n].[ID]

