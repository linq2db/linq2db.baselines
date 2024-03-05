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
	[i].[FirstName] <> 'John'

