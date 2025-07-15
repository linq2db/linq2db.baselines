﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase(Mid([p].[FirstName], 2, 2)) = LCase(Mid('Joh', 2, 2)) AND
	[p].[PersonID] = 1

