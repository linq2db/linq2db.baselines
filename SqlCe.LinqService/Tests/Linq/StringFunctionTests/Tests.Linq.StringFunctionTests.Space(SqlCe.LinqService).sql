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
	[p].[FirstName] + Space([p].[PersonID] + 1) + '123' = 'John  123' AND
	[p].[PersonID] = 1

