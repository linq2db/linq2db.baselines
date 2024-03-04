﻿BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN Substring([p].[FirstName], 2, 2) > 'oh'
			THEN 1
		WHEN Substring([p].[FirstName], 2, 2) = 'oh'
			THEN 0
		ELSE -1
	END = 0 AND
	[p].[PersonID] = 1

