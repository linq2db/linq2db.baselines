-- Sybase.Managed Sybase

SELECT
	[sub].[PersonID_1],
	[sub].[FirstName],
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
	) [sub]
		LEFT JOIN [Doctor] [doctor_1] ON [doctor_1].[PersonID] = [sub].[PersonID] AND [doctor_1].[PersonID] = [sub].[PersonID_1]
WHERE
	[sub].[FirstName] LIKE 'J%' ESCAPE '~'
ORDER BY
	[sub].[PersonID_1],
	[sub].[FirstName],
	[doctor_1].[Taxonomy]

