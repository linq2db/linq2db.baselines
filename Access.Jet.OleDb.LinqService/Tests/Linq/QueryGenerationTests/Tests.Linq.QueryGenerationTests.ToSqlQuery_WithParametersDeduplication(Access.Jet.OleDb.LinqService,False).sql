BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @firstName VarWChar(255) -- String
SET     @firstName = 'John'
DECLARE @firstName VarWChar(255) -- String
SET     @firstName = 'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @firstName OR [p].[LastName] = @firstName

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @firstName VarWChar(4) -- String
SET     @firstName = 'John'
DECLARE @firstName_1 VarWChar(4) -- String
SET     @firstName_1 = 'John'

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @firstName OR [p].[LastName] = @firstName_1

