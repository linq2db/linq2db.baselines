BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = ?

