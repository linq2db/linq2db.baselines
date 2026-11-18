-- SqlCe
SELECT DISTINCT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
				LEFT JOIN [Patient] [a_Patient] ON [p_1].[PersonID] = [a_Patient].[PersonID]
		WHERE
			[p].[PersonID] = [p_1].[PersonID] AND [a_Patient].[PersonID] IS NULL AND
			[a_Patient].[Diagnosis] IS NULL
	)

