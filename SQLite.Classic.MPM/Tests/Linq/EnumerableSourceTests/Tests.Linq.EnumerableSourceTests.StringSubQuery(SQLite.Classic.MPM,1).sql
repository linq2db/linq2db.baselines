﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[FirstName],
	[t].[PersonID],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					('j'), ('o'), ('h'), ('n')
				) [x]
		WHERE
			CharIndex([x].[item], [t].[FirstName]) - 1 > 0 AND
			CharIndex([x].[item], [t].[FirstName]) IS NOT NULL
	)

