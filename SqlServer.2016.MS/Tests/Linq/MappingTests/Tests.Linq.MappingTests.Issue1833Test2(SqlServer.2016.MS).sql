﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[FirstName] + N':' + [e].[LastName]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1

