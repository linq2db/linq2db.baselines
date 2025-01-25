BeforeExecute
-- SqlCe

SELECT
	[t2].[PersonID],
	[t2].[FirstName],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender],
	[t2].[LastName] + ', ' + [t2].[FirstName] as [FullName],
	[t2].[LastName] + ', ' + [t2].[FirstName] as [AsSqlFullName],
	[t1].[COUNT_1] as [DoctorCount]
FROM
	[Person] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [t2].[PersonID]
		) [t1]

BeforeExecute
-- SqlCe

SELECT
	[i_1].[PersonID],
	[i_1].[FirstName],
	[i_1].[LastName],
	[i_1].[MiddleName],
	[i_1].[Gender],
	[i_1].[FullName],
	[i_1].[FullName] as [AsSqlFullName],
	[i_1].[DoctorCount]
FROM
	(
		SELECT
			[i].[LastName],
			[i].[FirstName],
			[i].[PersonID],
			[i].[MiddleName],
			[i].[Gender],
			[i].[LastName] + ', ' + [i].[FirstName] as [FullName],
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
	) [i_1]
WHERE
	[i_1].[LastName] + ', ' + [i_1].[FirstName] <> 'Pupkin, John'

