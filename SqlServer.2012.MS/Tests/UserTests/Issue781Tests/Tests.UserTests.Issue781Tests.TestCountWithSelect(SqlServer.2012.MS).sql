BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

