-- Access.Jet.OleDb AccessOleDb
DECLARE @t VarWChar(1) -- String
SET     @t = 'A'

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1]
WHERE
	[x_1].[FirstName] = @t

-- Access.Jet.OleDb AccessOleDb
DECLARE @t VarWChar(1) -- String
SET     @t = 'A'

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1]
WHERE
	[x_1].[FirstName] = @t

