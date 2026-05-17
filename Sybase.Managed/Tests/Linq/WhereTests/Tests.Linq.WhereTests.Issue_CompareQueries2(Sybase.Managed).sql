-- Sybase.Managed Sybase

SELECT TOP 2
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 2) AND [p].[PersonID] NOT IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] IN (3)
	)

-- Sybase.Managed Sybase

SELECT TOP 2
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (3) AND [p].[PersonID] NOT IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] IN (1, 2)
	)

