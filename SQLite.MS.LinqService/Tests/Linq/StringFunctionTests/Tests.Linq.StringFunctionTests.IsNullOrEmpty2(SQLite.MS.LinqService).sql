﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN Length([p].[FirstName]) = 0 THEN 1
		ELSE 0
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

