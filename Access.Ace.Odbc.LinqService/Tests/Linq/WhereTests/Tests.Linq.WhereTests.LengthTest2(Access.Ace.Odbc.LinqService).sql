﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	LEN([nm].[FirstName]) <> 0

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

