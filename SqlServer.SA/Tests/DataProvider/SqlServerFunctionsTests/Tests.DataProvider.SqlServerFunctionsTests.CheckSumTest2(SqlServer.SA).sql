﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

