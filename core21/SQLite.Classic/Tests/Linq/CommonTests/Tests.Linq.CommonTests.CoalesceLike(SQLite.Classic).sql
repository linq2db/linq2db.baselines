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
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CASE
			WHEN [p].[FirstName] IS NULL
				THEN NULL
			ELSE [p].[FirstName] LIKE 'Jo%'
		END IS NULL
			THEN 0
		WHEN [p].[FirstName] IS NULL
			THEN NULL
		ELSE [p].[FirstName] LIKE 'Jo%'
	END = 1

