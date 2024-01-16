﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[PersonID_1],
	[d].[Taxonomy]
FROM
	(
		SELECT
			[p].[PersonID],
			[pt].[PersonID] as [PersonID_1]
		FROM
			[Person] [p],
			[Patient] [pt]
	) [t1],
	[Doctor] [d]
ORDER BY
	[t1].[PersonID],
	[t1].[PersonID_1],
	[d].[Taxonomy]

