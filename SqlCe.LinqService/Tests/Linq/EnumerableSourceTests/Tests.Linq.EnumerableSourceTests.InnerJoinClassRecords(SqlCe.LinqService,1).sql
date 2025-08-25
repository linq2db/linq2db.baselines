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
			SELECT 1 AS [ID]
			UNION ALL
			SELECT 2 AS [ID]) [n] ON [p].[PersonID] = [n].[ID]

