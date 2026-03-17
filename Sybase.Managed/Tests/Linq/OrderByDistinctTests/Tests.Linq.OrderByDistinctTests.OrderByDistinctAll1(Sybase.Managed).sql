-- Sybase.Managed Sybase

SELECT TOP 3
	[r_1].[ID],
	[r_1].[LastName]
FROM
	(
		SELECT DISTINCT
			[r].[FirstName],
			[r].[PersonID] as [ID],
			[r].[LastName],
			[r].[MiddleName],
			[r].[Gender]
		FROM
			[Person] [r]
	) [r_1]
ORDER BY
	[r_1].[FirstName]

-- Sybase.Managed Sybase

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

