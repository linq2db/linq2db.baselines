﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + 2 = 3 AND [p].[PersonID] + 1 = 2 AND
	[p].[PersonID] = 1

