﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	NOT ([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0) AND
	[p].[PersonID] = 1

