﻿BeforeExecute
-- SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] IS NOT NULL AND Len([p].[FirstName]) <> 0) AND
	[p].[PersonID] = 1

