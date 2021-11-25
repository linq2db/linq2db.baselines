BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' + [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [selectParam]
				LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			'test' + [a_Patient].[Diagnosis]
	) [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' + [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [selectParam]
				LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			'test' + [a_Patient].[Diagnosis]
	) [t1]

