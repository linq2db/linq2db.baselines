﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

