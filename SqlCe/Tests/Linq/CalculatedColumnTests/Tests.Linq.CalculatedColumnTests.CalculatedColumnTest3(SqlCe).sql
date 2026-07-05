-- SqlCe

SELECT
	[t2].[cnt],
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender],
	[t].[FullName],
	[t].[FullName] as [AsSqlFullName],
	[t].[DoctorCount]
FROM
	(
		SELECT
			[i].[PersonID],
			[i].[FirstName],
			[i].[LastName],
			[i].[MiddleName],
			[i].[Gender],
			[i].[LastName] + ', ' + [i].[FirstName] as [FullName],
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
	) [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [cnt]
			FROM
				[Doctor] [d_1]
			WHERE
				[d_1].[PersonID] = [t].[PersonID]
		) [t2]

