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
	Mid([p].[FirstName], 2, Len([p].[FirstName]) - 1) = 'ohn' AND
	[p].[PersonID] = 1

