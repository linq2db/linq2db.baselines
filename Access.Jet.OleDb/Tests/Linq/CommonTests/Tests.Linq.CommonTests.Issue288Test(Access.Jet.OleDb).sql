BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarWChar(4) -- String
SET     @p = 'John'

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

