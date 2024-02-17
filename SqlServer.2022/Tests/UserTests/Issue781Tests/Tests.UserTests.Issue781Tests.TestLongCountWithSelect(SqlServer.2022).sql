BeforeExecute
-- SqlServer.2022

SELECT
	Count(*)
FROM
	(
		SELECT
			N'test' + [a_Patient].[Diagnosis] as [c1]
		FROM
			[Person] [_]
				LEFT JOIN [Patient] [a_Patient] ON [_].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			N'test' + [a_Patient].[Diagnosis]
	) [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	Count(*)
FROM
	(
		SELECT
			[_1].[c1]
		FROM
			(
				SELECT
					IIF([a_Patient].[PersonID] IS NULL, NULL, N'test' + [a_Patient].[Diagnosis]) as [c1]
				FROM
					[Person] [_]
						LEFT JOIN [Patient] [a_Patient] ON [_].[PersonID] = [a_Patient].[PersonID]
			) [_1]
		GROUP BY
			[_1].[c1]
	) [t1]

