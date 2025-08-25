BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 3 AS [ID]
			UNION ALL
			SELECT 4) [n] ON [p].[PersonID] = [n].[ID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 5 AS [ID]
			UNION ALL
			SELECT 6) [n] ON [p].[PersonID] = [n].[ID]

