﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(Len([p].[FirstName]) = 0, 1, 0)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

