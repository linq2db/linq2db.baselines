﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[FirstName] > 'Johnn', 1, IIF([p].[FirstName] = 'Johnn', 0, -1)) <= 0 AND
	[p].[PersonID] = 1

