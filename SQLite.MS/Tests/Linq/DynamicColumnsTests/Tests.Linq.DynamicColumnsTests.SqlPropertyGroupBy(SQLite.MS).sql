﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

