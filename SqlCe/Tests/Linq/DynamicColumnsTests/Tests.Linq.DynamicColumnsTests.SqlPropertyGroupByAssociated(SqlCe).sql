BeforeExecute
-- SqlCe

SELECT
	[a_Patient].[Diagnosis] as [Key_1],
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[a_Patient].[Diagnosis]

