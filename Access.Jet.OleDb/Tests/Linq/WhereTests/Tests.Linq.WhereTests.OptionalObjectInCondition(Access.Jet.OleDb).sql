-- Access.Jet.OleDb AccessOleDb
DECLARE @Id VarWChar(1) -- String
SET     @Id = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @Id

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	1 = 0

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id VarWChar(1) -- String
SET     @Id = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @Id

