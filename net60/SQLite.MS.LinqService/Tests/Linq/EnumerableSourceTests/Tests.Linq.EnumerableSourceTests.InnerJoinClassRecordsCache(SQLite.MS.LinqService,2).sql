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
		INNER JOIN (
			SELECT NULL [PersonID] WHERE 1 = 0
			UNION ALL
			VALUES
				(3), (4)
			) [n] ON [p].[PersonID] = [n].[PersonID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [PersonID] WHERE 1 = 0
			UNION ALL
			VALUES
				(5), (6)
			) [n] ON [p].[PersonID] = [n].[PersonID]

