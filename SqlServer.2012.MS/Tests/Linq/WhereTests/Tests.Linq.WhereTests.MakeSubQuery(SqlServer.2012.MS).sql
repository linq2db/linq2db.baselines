﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[PersonID] + 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

