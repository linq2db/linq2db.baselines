﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @nm NVarChar(4) -- String
SET     @nm = 'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (?)

