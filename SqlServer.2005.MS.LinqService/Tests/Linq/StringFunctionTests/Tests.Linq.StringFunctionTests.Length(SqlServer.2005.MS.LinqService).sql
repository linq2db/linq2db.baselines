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
	LEN([p].[FirstName] + N'.') - 1 = LEN(N'John.') - 1 AND
	[p].[PersonID] = 1

