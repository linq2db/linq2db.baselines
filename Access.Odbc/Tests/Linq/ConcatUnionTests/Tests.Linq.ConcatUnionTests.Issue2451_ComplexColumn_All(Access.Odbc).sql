﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName] + CStr('/') + [p_1].[LastName]
FROM
	[Person] [p_1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[FirstName] + CStr('/') + [p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName]
FROM
	[Person] [p_1]

