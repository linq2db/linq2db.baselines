﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + IIF(LEN([p].[FirstName] + N'.') > 7, [p].[FirstName], Replicate(N' ', 6 - (LEN([p].[FirstName] + N'.') - 1)) + [p].[FirstName]) = N'123  John' AND
	[p].[PersonID] = 1

