﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT NULL AS [item] WHERE 0
		UNION ALL
		VALUES
			('Janet'), ('Doe'), ('John'), ('Doe')
		) [n]
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

