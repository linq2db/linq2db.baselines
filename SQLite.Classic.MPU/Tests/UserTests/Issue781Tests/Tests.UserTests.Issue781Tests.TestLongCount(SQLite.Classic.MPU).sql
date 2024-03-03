BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			'test' || [a_Patient].[Diagnosis]
	) [t2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			'test' || [a_Patient].[Diagnosis]
	) [t2]

