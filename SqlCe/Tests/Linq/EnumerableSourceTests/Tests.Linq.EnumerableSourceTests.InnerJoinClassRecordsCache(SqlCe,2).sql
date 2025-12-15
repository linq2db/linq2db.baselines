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
			SELECT 3 AS [ID]
			UNION ALL
			SELECT 4 AS [ID]) [n] ON [p].[PersonID] = [n].[ID]

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
			SELECT 5 AS [ID]
			UNION ALL
			SELECT 6 AS [ID]) [n] ON [p].[PersonID] = [n].[ID]

