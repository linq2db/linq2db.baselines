BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[is_empty]
FROM
	[Person] [person_1]
		LEFT JOIN (
			SELECT
				NULL as [r],
				1 as [is_empty]
			FROM
				[Doctor] [d]
		) [t1] ON [person_1].[PersonID] = 0 AND [person_1].[FirstName] IS NULL AND [person_1].[LastName] = [t1].[r] AND [person_1].[Gender] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[is_empty]
FROM
	[Person] [person_1]
		LEFT JOIN (
			SELECT
				NULL as [r],
				1 as [is_empty]
			FROM
				[Doctor] [d]
		) [t1] ON [person_1].[PersonID] = 0 AND [person_1].[FirstName] IS NULL AND [person_1].[LastName] = [t1].[r] AND [person_1].[Gender] IS NULL

