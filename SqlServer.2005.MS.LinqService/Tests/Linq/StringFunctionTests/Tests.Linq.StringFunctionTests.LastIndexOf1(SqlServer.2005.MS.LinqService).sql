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
	((LEN([p].[LastName] + N'.') - 1) - CharIndex(N'p', Reverse([p].[LastName]))) - (LEN(N'p.') - 1) = 1 AND
	CharIndex(N'p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

