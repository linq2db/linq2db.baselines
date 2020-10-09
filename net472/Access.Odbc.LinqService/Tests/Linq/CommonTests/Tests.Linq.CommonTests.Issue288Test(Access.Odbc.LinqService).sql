BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID NVarChar(4) -- String
SET     @ID = 'John'

SELECT TOP 1 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = ?

