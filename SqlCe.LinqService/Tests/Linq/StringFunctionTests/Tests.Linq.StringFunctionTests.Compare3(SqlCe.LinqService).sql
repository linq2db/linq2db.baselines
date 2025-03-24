﻿BeforeExecute
--  SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, 2) = Substring('Joh', 2, 2) AND
	[p].[PersonID] = 1

