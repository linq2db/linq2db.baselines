﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p1].[PersonID],
	[p3].[FirstName]
FROM
	[Person] [p1]
		INNER JOIN [Person] [p3] ON [p1].[PersonID] = [p3].[PersonID]
WHERE
	[p1].[PersonID] = 1

