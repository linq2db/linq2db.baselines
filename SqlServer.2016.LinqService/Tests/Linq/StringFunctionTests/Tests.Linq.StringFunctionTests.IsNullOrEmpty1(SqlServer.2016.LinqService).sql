﻿BeforeExecute
-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LEN([p].[FirstName] + N'.') <> 1 AND [p].[PersonID] = 1

