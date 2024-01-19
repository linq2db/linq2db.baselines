BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 1 AS [PersonID]
			UNION ALL
			SELECT 2 AS [PersonID]) [n] ON [p].[PersonID] = [n].[PersonID]

