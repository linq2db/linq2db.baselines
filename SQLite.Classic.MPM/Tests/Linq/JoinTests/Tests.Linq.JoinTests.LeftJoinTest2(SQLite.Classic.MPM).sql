BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p1].[PersonID],
	[p1].[Diagnosis],
	[g_1].[PersonID],
	[g_1].[Diagnosis],
	[p3].[FirstName],
	[p3].[PersonID],
	[p3].[LastName],
	[p3].[MiddleName],
	[p3].[Gender]
FROM
	[Patient] [p1]
		LEFT JOIN [Patient] [g_1] ON ([p1].[Diagnosis] = [g_1].[Diagnosis] OR [p1].[Diagnosis] IS NULL AND [g_1].[Diagnosis] IS NULL)
		INNER JOIN [Person] [p3] ON [g_1].[PersonID] = [p3].[PersonID]

