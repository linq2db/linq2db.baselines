BeforeExecute
-- SqlCe

SELECT
	[a_PersonDoctor].[FirstName]
FROM
	[Doctor] [d_1]
		INNER JOIN [Person] [a_PersonDoctor] ON [d_1].[PersonID] = [a_PersonDoctor].[PersonID]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [a_PersonDoctor].[PersonID]
		) [t1]

