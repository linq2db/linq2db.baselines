﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[LastName],
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName],
	[t1].[LastName]
ORDER BY
	[t1].[FirstName]

