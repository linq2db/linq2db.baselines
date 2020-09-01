BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
		FROM
			(
				SELECT
					'test' || [a_Patient].[Diagnosis] as [c1]
				FROM
					[Person] [selectParam]
						LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
			) [t1]
		GROUP BY
			[t1].[c1]
		HAVING
			[t1].[c1] IS NOT NULL
	) [t2]

