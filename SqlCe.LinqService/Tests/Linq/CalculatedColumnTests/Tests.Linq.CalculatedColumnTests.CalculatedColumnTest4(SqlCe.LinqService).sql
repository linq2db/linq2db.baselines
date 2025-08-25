BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[a_PersonDoctor].[PersonID],
	[a_PersonDoctor].[FirstName],
	[a_PersonDoctor].[LastName],
	[a_PersonDoctor].[MiddleName],
	[a_PersonDoctor].[Gender],
	[a_PersonDoctor].[LastName] + ', ' + [a_PersonDoctor].[FirstName] as [FullName],
	[a_PersonDoctor].[LastName] + ', ' + [a_PersonDoctor].[FirstName] as [AsSqlFullName],
	[t1].[DoctorCount]
FROM
	[Doctor] [d_1]
		INNER JOIN [Person] [a_PersonDoctor] ON [d_1].[PersonID] = [a_PersonDoctor].[PersonID]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DoctorCount]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [a_PersonDoctor].[PersonID]
		) [t1]

