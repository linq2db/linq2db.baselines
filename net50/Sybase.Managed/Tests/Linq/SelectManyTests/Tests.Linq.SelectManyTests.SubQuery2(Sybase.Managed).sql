BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p_1].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p_1]
		INNER JOIN [Person] [p] ON 1=1
WHERE
	[p_1].[PersonID] = [p].[PersonID] AND [p].[PersonID] <> 2 AND
	([p_1].[PersonID] = 1 OR [p_1].[PersonID] = 2)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p_1].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p_1]
		INNER JOIN [Person] [p] ON 1=1
WHERE
	[p_1].[PersonID] = [p].[PersonID] AND [p].[PersonID] <> 2 AND
	([p_1].[PersonID] = 1 OR [p_1].[PersonID] = 2)

