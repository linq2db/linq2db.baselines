BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 'Janet' AS [item]
			UNION ALL
			SELECT 'Doe' AS [item]
			UNION ALL
			SELECT 'John' AS [item]
			UNION ALL
			SELECT 'Doe' AS [item]) [n] ON [p].[LastName] = [n].[item]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 'Janet' AS [item]
			UNION ALL
			SELECT 'Doe' AS [item]
			UNION ALL
			SELECT 'John' AS [item]
			UNION ALL
			SELECT 'Doe1' AS [item]) [n] ON [p].[LastName] = [n].[item]

