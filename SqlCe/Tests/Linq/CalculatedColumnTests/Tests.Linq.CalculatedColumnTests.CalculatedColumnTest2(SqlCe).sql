BeforeExecute
-- SqlCe

SELECT
	[t3].[PersonID],
	[t3].[FirstName],
	[t3].[LastName],
	[t3].[MiddleName],
	[t3].[Gender],
	[t3].[LastName] + ', ' + [t3].[FirstName] as [FullName],
	[t3].[LastName] + ', ' + [t3].[FirstName] as [AsSqlFullName],
	[t2].[Count_1] as [DoctorCount]
FROM
	[Person] [t3]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Doctor] [t1]
			WHERE
				[t1].[PersonID] = [t3].[PersonID]
		) [t2]

BeforeExecute
-- SqlCe

SELECT
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] + ', ' + [i].[FirstName] as [FullName],
	[i].[LastName] + ', ' + [i].[FirstName] as [AsSqlFullName],
	[t2].[Count_1] as [DoctorCount]
FROM
	[Person] [i]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Doctor] [t1]
			WHERE
				[t1].[PersonID] = [i].[PersonID]
		) [t2]
WHERE
	[i].[LastName] + ', ' + [i].[FirstName] <> 'Pupkin, John'

