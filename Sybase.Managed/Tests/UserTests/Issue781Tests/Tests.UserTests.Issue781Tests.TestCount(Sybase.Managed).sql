-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			CASE WHEN [a_Patient].[Diagnosis] IS NULL THEN NULL ELSE 'test' || [a_Patient].[Diagnosis] END as [Key_1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
	) [t2]

