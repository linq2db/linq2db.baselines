﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[_].[PersonID],
	[_].[LastName]
FROM
	[Person] [_]
ORDER BY
	IIF([_].[PersonID] IN (1, 3), 1, 0)

