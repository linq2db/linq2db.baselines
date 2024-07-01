BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[PersonID] + [y].[item]
FROM
	[Person] [x],
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 3) [y]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

