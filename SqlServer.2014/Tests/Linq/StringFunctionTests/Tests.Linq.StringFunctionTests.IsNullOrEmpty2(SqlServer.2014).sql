﻿BeforeExecute
-- SqlServer.2014

SELECT
	IIF(Len([p].[FirstName]) = 0, 1, 0)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

