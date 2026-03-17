-- Access.Ace.OleDb AccessOleDb

SELECT
	[cross_1].[PersonID_1],
	[cross_1].[FirstName],
	[doctor_1].[Taxonomy]
FROM
	(
		SELECT
			[person_1].[PersonID],
			[patient_1].[PersonID] as [PersonID_1],
			[person_1].[FirstName]
		FROM
			[Patient] [patient_1],
			[Person] [person_1]
	) [cross_1]
		LEFT JOIN [Doctor] [doctor_1] ON ([doctor_1].[PersonID] = [cross_1].[PersonID] AND [doctor_1].[PersonID] = [cross_1].[PersonID_1])
WHERE
	[cross_1].[FirstName] LIKE 'J%'
ORDER BY
	[cross_1].[PersonID_1],
	[cross_1].[FirstName],
	[doctor_1].[Taxonomy]

