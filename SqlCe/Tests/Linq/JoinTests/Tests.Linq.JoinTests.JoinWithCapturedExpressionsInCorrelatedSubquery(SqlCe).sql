-- SqlCe
SELECT
	[p].[PersonID],
	[t1].[Count_1]
FROM
	[Person] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Patient] [pa]
					INNER JOIN [Person] [pe] ON [pa].[PersonID] = [pe].[PersonID]
			WHERE
				[pa].[PersonID] = [p].[PersonID]
		) [t1]

-- SqlCe
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlCe
SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

