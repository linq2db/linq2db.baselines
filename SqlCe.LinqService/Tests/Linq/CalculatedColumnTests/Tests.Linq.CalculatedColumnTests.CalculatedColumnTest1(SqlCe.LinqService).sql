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
			[i].[FirstName],
			[i].[PersonID],
			[i].[LastName],
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
	[i_1].[FirstName] <> 'John'

