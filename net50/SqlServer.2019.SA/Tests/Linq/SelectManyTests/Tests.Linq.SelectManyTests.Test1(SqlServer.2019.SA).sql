﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p1].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p1]
		CROSS JOIN [Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND [p1].[PersonID] = 1

