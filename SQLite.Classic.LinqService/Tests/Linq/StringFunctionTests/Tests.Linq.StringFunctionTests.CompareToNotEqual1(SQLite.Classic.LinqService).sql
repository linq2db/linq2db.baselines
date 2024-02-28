﻿BeforeExecute
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
		WHEN [p].[FirstName] > 'Jo'
			THEN 1
		WHEN [p].[FirstName] = 'Jo'
			THEN 0
		ELSE -1
	END <> 0 AND
	[p].[PersonID] = 1

