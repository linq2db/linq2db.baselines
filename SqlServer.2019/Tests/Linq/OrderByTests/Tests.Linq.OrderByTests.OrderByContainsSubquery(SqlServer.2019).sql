﻿BeforeExecute
-- SqlServer.2019

SELECT
	[_].[PersonID],
	[_].[LastName]
FROM
	[Person] [_]
ORDER BY
	IIF([_].[PersonID] IN (1, 3), 1, 0)

