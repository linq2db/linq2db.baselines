BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t2].[c1]
		FROM
			(
				SELECT
					N'test' + [a_Patient].[Diagnosis] as [c1]
				FROM
					[Person] [t1]
						LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
			) [t2]
		GROUP BY
			[t2].[c1]
		HAVING
			[t2].[c1] IS NOT NULL
	) [t3]

