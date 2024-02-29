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
			SELECT 2 AS [PersonID]
			UNION ALL
			SELECT 3 AS [PersonID]) [n] ON [p].[PersonID] = [n].[PersonID]

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
			SELECT 4 AS [PersonID]
			UNION ALL
			SELECT 5 AS [PersonID]) [n] ON [p].[PersonID] = [n].[PersonID]

