﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[p].[PersonID],
	[p].[MiddleName],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

