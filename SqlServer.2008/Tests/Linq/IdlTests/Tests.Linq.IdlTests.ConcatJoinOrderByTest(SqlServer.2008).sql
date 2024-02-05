BeforeExecute
-- SqlServer.2008

SELECT
	[person_1].[PersonID],
	[y].[PersonID]
FROM
	(
		SELECT
			[pat].[PersonID],
			[pat].[Diagnosis]
		FROM
			[Patient] [pat]
		WHERE
			[pat].[Diagnosis] = N'a'
		UNION ALL
		SELECT
			[pat_1].[PersonID],
			[pat_1].[Diagnosis]
		FROM
			[Patient] [pat_1]
		WHERE
			[pat_1].[Diagnosis] = N'b'
	) [y]
		INNER JOIN [Person] [person_1] ON [y].[PersonID] = [person_1].[PersonID]
ORDER BY
	[person_1].[PersonID]

