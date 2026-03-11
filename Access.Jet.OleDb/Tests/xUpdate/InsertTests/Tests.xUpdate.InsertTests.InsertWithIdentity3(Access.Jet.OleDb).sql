-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarWChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

-- Access.Jet.OleDb AccessOleDb

SELECT @@IDENTITY

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

