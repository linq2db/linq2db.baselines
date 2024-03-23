BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
		HAVING
			N'test' + [a_Patient].[Diagnosis] IS NOT NULL
	) [t1]

