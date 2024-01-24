﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[PersonID],
	[p].[Gender],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 3)
ORDER BY
	1,
	[p].[LastName]

