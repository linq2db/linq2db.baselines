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
	InStr(3, [p].[LastName], 'e', 1) - 1 = 4 AND [p].[PersonID] = 2

