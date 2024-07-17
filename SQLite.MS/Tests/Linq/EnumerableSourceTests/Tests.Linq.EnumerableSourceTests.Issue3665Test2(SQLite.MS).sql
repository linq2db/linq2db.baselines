﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[PersonID],
	[y].[value__]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT NULL [value__] WHERE 1 = 0
			UNION ALL
			VALUES
				(0), (1), (2), (3)
			) [y]

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

