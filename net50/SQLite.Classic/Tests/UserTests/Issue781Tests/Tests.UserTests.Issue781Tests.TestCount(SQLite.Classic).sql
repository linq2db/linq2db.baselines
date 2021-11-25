﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
		FROM
			[Person] [selectParam]
				LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			'test' || [a_Patient].[Diagnosis]
	) [t1]

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
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

