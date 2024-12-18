﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(4) -- String
SET     @p = 'John'

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p AND [p].[FirstName] IS NOT NULL

