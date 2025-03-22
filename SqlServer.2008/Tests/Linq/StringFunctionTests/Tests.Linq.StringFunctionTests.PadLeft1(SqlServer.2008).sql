﻿BeforeExecute
-- SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + CASE
		WHEN LEN([p].[FirstName] + N'.') < 7 THEN REPLICATE(N' ', 6 - (LEN([p].[FirstName] + N'.') - 1)) + [p].[FirstName]
		ELSE [p].[FirstName]
	END = N'123  John' AND
	[p].[PersonID] = 1

