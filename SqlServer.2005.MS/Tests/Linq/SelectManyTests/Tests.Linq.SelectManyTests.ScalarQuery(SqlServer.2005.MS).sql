﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p2].[PersonID],
	[p1].[FirstName]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID]

