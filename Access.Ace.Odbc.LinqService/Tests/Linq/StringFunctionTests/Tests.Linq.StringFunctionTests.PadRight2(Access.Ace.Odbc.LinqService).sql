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
	IIF(LEN([p].[FirstName]) > 6, [p].[FirstName], [p].[FirstName] + string(6 - LEN([p].[FirstName]), '*')) + '123' = 'John**123' AND
	[p].[PersonID] = 1

