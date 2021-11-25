BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[patient_1].[PersonID],
	[person_1].[FirstName],
	[x].[Taxonomy]
FROM
	[Patient] [patient_1],
	[Person] [person_1]
		LEFT JOIN [Doctor] [x] ON [x].[PersonID] = [person_1].[PersonID] AND [x].[PersonID] = [patient_1].[PersonID]
WHERE
	[person_1].[FirstName] LIKE 'J%' ESCAPE '~'
ORDER BY
	[patient_1].[PersonID],
	[person_1].[FirstName],
	[x].[Taxonomy]

