﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[FirstName],
	RANK() OVER(ORDER BY IIF([x].[PersonID] = 2, 1, 0))
FROM
	[Person] [x]

