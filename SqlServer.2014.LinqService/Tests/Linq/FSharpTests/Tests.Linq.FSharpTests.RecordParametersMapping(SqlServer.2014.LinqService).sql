﻿BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

