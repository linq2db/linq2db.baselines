﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p1].[PersonID],
	[p1].[Diagnosis],
	[p2].[PersonID],
	[p2].[Diagnosis],
	[p3].[FirstName],
	[p3].[PersonID],
	[p3].[LastName],
	[p3].[MiddleName],
	[p3].[Gender]
FROM
	[Patient] [p1]
		LEFT JOIN [Patient] [p2] ON [p1].[Diagnosis] = [p2].[Diagnosis] OR [p1].[Diagnosis] IS NULL AND [p2].[Diagnosis] IS NULL
		INNER JOIN [Person] [p3] ON [p2].[PersonID] = [p3].[PersonID]

