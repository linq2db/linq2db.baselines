-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			N'test' + [a_Patient].[Diagnosis] as [Key_1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
	) [t2]

