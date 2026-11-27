-- Access.Ace.OleDb AccessOleDb
SELECT
	InStr(1, [p].[MiddleName], 'o', 1)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	InStr(1, [p].[FirstName], [p].[MiddleName], 1)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	InStr(1, [p].[FirstName], IIF([p].[MiddleName] IS NULL, NULL, 'o'), 1)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	InStr(1, [p].[MiddleName], 'o', 1) = 0
ORDER BY
	[p].[PersonID]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

