﻿BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN ([p].[FirstName] IS NULL OR LEN(REPLACE([p].[FirstName],' ','.')) = 0)
			THEN 1
		ELSE 0
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

