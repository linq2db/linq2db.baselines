﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[PersonID],
	[_].[LastName]
FROM
	[Person] [_]
ORDER BY
	CASE
		WHEN [_].[PersonID] IN (1, 3)
			THEN 1
		ELSE 0
	END

