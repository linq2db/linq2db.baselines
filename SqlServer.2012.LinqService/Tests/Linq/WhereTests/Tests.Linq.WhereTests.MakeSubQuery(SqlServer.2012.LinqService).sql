﻿BeforeExecute
-- SqlServer.2012

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + 1 = 2

