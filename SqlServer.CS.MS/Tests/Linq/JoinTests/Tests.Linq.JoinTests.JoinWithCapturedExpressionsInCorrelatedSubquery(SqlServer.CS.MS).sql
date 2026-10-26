-- SqlServer.CS.MS SqlServer.2025
SELECT
	[p].[PersonID],
	(
		SELECT
			COUNT(*)
		FROM
			[Patient] [pa]
				INNER JOIN [Person] [pe] ON [pa].[PersonID] = [pe].[PersonID]
		WHERE
			[pa].[PersonID] = [p].[PersonID]
	)
FROM
	[Person] [p]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

