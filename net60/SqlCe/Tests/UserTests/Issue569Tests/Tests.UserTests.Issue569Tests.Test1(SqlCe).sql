BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[PersonID_1],
	[t1].[FirstName],
	[x].[Taxonomy]
FROM
	(
		SELECT
			[person_1].[PersonID],
			[patient_1].[PersonID] as [PersonID_1],
			[person_1].[FirstName]
		FROM
			[Patient] [patient_1],
			[Person] [person_1]
	) [t1]
		LEFT JOIN [Doctor] [x] ON [x].[PersonID] = [t1].[PersonID] AND [x].[PersonID] = [t1].[PersonID_1]
WHERE
	[t1].[FirstName] LIKE 'J%' ESCAPE '~'
ORDER BY
	[t1].[PersonID_1],
	[t1].[FirstName],
	[x].[Taxonomy]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

