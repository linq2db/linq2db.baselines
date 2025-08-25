BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[x].[PersonID] + [y].[item]
FROM
	[Person] [x],
	(
		SELECT 0 AS [item]
		UNION ALL
		SELECT 1
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [y]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

