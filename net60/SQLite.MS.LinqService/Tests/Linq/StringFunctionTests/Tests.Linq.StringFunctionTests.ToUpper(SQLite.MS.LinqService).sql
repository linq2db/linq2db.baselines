﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Upper([p].[FirstName]) = 'JOHN' AND [p].[PersonID] = 1

