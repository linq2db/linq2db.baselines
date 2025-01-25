BeforeExecute
-- SqlCe

SELECT
	[x].[PersonID] as [ID]
FROM
	[Person] [x]
		LEFT JOIN [Patient] [a_Patient] ON [x].[PersonID] = [a_Patient].[PersonID]
WHERE
	[a_Patient].[Diagnosis] IS NOT NULL

