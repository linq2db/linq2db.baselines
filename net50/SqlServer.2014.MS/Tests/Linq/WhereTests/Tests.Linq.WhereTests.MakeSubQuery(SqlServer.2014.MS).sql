﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

