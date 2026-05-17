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
			SELECT 2 AS [ID]
			UNION ALL
			SELECT 3 AS [ID]) [n] ON [p].[PersonID] = [n].[ID]

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
			SELECT 4 AS [ID]
			UNION ALL
			SELECT 5 AS [ID]) [n] ON [p].[PersonID] = [n].[ID]

