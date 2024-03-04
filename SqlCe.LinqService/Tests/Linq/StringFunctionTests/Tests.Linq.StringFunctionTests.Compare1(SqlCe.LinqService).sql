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
		WHEN [p].[FirstName] > 'Joh'
			THEN 1
		WHEN [p].[FirstName] = 'Joh'
			THEN 0
		ELSE -1
	END > 0 AND
	[p].[PersonID] = 1

