﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL AS [item] WHERE 0
			UNION ALL
			VALUES
				('Doe')
			) [n] ON [p].[LastName] = [n].[item]

