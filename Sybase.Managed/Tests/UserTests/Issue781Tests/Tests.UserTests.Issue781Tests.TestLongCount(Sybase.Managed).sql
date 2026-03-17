-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			'test' + [a_Patient].[Diagnosis] as [Key_1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
	) [t2]

