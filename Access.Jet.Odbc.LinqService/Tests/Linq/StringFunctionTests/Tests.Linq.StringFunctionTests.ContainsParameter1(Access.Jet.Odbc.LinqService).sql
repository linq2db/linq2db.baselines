﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @str NVarChar(4) -- String
SET     @str = '%oh%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE ? AND [p].[PersonID] = 1

