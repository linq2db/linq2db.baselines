﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[PersonID],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 3)
ORDER BY
	2 DESC,
	[p].[FirstName] DESC

