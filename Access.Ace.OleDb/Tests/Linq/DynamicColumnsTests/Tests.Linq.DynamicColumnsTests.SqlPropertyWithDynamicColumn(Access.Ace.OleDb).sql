﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[PersonID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = 'John'

