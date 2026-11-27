-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			'test' + CASE
				WHEN [a_Patient].[Diagnosis] IS NULL THEN ''
				ELSE [a_Patient].[Diagnosis]
			END as [Key_1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON ([t1].[PersonID] = [a_Patient].[PersonID])
	) [t2]

