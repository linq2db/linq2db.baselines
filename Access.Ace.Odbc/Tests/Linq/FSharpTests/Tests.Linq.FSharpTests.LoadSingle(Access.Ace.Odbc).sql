﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

