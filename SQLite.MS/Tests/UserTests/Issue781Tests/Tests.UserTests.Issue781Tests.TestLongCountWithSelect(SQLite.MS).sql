BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [_]
				LEFT JOIN [Patient] [a_Patient] ON [_].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			'test' || [a_Patient].[Diagnosis]
	) [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			[_1].[c1]
		FROM
			(
				SELECT
					CASE
						WHEN [a_Patient].[PersonID] IS NULL
							THEN NULL
						ELSE 'test' || [a_Patient].[Diagnosis]
					END as [c1]
				FROM
					[Person] [_]
						LEFT JOIN [Patient] [a_Patient] ON [_].[PersonID] = [a_Patient].[PersonID]
			) [_1]
		GROUP BY
			[_1].[c1]
	) [t1]

