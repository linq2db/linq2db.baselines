BeforeExecute
-- SqlCe

SELECT
	[a_PersonDoctor].[FirstName]
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

