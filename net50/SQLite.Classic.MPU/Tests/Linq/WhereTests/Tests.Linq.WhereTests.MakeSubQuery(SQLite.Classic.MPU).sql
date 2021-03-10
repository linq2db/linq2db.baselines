﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p_1].[PersonID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			[p].[PersonID] + 1 as [PersonID],
			[p].[FirstName]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	[p_1].[PersonID] = 2

