﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [p]
		CROSS JOIN [Patient] [pt]
		CROSS JOIN [Doctor] [d]
ORDER BY
	[p].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]

