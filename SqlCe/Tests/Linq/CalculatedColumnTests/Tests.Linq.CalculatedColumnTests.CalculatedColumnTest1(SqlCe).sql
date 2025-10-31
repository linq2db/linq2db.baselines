-- SqlCe

SELECT
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] + ', ' + [i].[FirstName] as [FullName],
	[i].[LastName] + ', ' + [i].[FirstName] as [AsSqlFullName],
	[t1].[DoctorCount]
FROM
	[Person] [i]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DoctorCount]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [i].[PersonID]
		) [t1]
WHERE
	[i].[FirstName] <> 'John'

