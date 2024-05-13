BeforeExecute
-- SqlCe

SELECT
	[t2].[COUNT_1],
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] + ', ' + [i].[FirstName] as [FullName],
	[i].[LastName] + ', ' + [i].[FirstName] as [AsSqlFullName],
	[t1].[COUNT_1] as [DoctorCount]
FROM
	[Person] [i]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [i].[PersonID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Doctor] [d_1]
			WHERE
				[d_1].[PersonID] = [i].[PersonID]
		) [t2]
WHERE
	[i].[FirstName] <> 'John'

