-- SqlCe
SELECT DISTINCT
	[p].[PersonID],
	[a_Patient].[PersonID] as [PersonID_1],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p].[PersonID] = [p_1].[PersonID] AND [a_Patient].[PersonID] IS NULL AND
			[a_Patient].[Diagnosis] IS NULL
	)

