-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN [x].[PersonID] = 3 THEN [x].[FirstName]
		ELSE ''
	END
FROM
	[Person] [x]
		INNER JOIN [Patient] [patient_1] ON [patient_1].[PersonID] = [x].[PersonID]

