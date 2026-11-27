-- Access.Jet.OleDb AccessOleDb
SELECT
	InStr(1, [p].[FirstName], 'x', 1) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	InStr(1, [p].[FirstName], 'x', 1) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @c WChar(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	InStr(1, [p].[FirstName], @c, 1) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @c WChar(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	InStr(2, [p].[FirstName], @c, 1) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

