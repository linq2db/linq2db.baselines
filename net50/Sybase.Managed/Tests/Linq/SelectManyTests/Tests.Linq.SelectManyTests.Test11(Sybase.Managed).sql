BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p1].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p1]
		INNER JOIN [Person] [p2] ON 1=1
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND [p1].[PersonID] = 1

