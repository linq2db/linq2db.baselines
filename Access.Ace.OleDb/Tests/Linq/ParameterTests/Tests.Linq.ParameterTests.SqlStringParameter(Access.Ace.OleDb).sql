BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(4) -- String
SET     @p = 'John'

SELECT TOP 2
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(6) -- String
SET     @p = 'Tester'

SELECT TOP 2
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

