﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	IIF(LEN([p].[FirstName] + N'.') = 1, 1, 0)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

