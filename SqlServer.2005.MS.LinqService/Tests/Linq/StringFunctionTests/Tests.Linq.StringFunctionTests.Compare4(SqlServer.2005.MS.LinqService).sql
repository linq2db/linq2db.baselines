﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower(Substring([p].[FirstName], 2, 2)) = N'oh' AND
	[p].[PersonID] = 1

