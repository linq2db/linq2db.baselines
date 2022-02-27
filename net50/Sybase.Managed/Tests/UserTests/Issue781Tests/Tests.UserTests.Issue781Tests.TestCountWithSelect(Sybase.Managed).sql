BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[Key_1]
		FROM
			(
				SELECT
					'test' + [a_Patient].[Diagnosis] as [Key_1]
				FROM
					[Person] [selectParam]
						LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
			) [t1]
		GROUP BY
			[t1].[Key_1]
	) [t2]

