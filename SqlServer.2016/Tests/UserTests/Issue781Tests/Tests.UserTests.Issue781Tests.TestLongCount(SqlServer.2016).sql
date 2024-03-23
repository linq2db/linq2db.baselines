BeforeExecute
-- SqlServer.2016

SELECT
	Count(*)
FROM
	(
		SELECT
			N'test' + [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			N'test' + [a_Patient].[Diagnosis]
	) [t2]

BeforeExecute
-- SqlServer.2016

SELECT
	Count(*)
FROM
	(
		SELECT
			N'test' + [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			N'test' + [a_Patient].[Diagnosis]
	) [t2]

