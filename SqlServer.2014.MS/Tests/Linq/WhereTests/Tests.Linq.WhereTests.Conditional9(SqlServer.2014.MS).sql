﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND NOT ([p].[MiddleName] IS NOT NULL OR [p].[PersonID] = 2) AND
	[p].[PersonID] <> 2

