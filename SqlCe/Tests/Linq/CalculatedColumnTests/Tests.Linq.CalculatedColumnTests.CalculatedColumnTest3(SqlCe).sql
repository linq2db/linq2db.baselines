-- SqlCe

SELECT
	[t2].[cnt],
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender],
	[t].[LastName] + ', ' + [t].[FirstName] as [FullName],
	[t].[LastName] + ', ' + [t].[FirstName] as [AsSqlFullName],
	[t1].[DoctorCount]
FROM
	[Person] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DoctorCount]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [t].[PersonID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [cnt]
			FROM
				[Doctor] [d_1]
			WHERE
				[d_1].[PersonID] = [t].[PersonID]
		) [t2]
WHERE
	[t].[FirstName] <> 'John'

