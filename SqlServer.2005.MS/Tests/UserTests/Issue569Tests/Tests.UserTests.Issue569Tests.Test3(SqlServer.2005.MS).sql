﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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

