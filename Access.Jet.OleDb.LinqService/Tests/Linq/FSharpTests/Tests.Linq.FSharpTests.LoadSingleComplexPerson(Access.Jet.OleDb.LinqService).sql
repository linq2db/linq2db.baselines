﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

