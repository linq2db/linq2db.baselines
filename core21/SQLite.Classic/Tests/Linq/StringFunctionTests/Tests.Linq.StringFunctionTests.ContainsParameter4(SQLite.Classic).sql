﻿BeforeExecute
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

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			CASE
				WHEN [p].[FirstName] LIKE '%Jo%'
					THEN 1
				ELSE 0
			END as [Field1],
			[p].[FirstName],
			[p].[PersonID],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	([p_1].[Field1] = 1 AND [p_1].[Field1] IS NOT NULL)
ORDER BY
	[p_1].[Field1]

