﻿BeforeExecute
-- SqlServer.2012

SELECT 
	CASE WHEN ([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0) THEN 1 ELSE 0 END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

