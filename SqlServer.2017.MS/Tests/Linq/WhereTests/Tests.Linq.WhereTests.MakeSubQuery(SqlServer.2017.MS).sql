﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

