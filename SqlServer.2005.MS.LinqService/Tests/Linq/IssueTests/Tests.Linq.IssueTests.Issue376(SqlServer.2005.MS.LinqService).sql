﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[PersonID],
	[a_Doctor].[PersonID],
	[a_Doctor].[Taxonomy]
FROM
	[Person] [_]
		LEFT JOIN [Doctor] [a_Doctor] ON [_].[PersonID] = [a_Doctor].[PersonID]
WHERE
	(Len([a_Doctor].[Taxonomy]) >= 0 OR [a_Doctor].[Taxonomy] IS NULL)

