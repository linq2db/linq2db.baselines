BeforeExecute
-- SqlCe

SELECT
	[a_PersonDoctor].[PersonID],
	[a_PersonDoctor].[FirstName],
	[a_PersonDoctor].[LastName],
	[a_PersonDoctor].[MiddleName],
	[a_PersonDoctor].[Gender],
	[a_PersonDoctor].[LastName] + ', ' + [a_PersonDoctor].[FirstName] as [FullName],
	[a_PersonDoctor].[LastName] + ', ' + [a_PersonDoctor].[FirstName] as [AsSqlFullName],
	[t2].[Count_1] as [DoctorCount]
FROM
	[Doctor] [d]
		INNER JOIN [Person] [a_PersonDoctor] ON [d].[PersonID] = [a_PersonDoctor].[PersonID]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Doctor] [t1]
			WHERE
				[t1].[PersonID] = [a_PersonDoctor].[PersonID]
		) [t2]

