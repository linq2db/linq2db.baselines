﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND
	[p].[MiddleName] IS NULL AND
	[p].[MiddleName] IS NULL AND
	[p].[FirstName] IS NOT NULL AND
	[p].[FirstName] IS NOT NULL

