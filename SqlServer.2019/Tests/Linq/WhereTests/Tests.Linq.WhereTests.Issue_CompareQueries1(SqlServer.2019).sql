﻿BeforeExecute
--  SqlServer.2019

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 2)

BeforeExecute
--  SqlServer.2019

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	1 = 0

