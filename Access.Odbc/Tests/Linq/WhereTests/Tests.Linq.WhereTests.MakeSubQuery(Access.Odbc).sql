﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + 1 = 2

