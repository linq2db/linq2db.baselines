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
DECLARE @ID VarWChar(4) -- String
SET     @ID = 'John'

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID

