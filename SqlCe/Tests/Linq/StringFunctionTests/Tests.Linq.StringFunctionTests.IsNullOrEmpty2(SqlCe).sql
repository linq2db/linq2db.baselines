﻿BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN ([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0)
			THEN 1
		ELSE 0
	END as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

