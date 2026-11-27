-- Access.Ace.OleDb AccessOleDb
SELECT
	InStr(2, [p].[MiddleName], 'o', 1)
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
	InStr(2, [p].[FirstName], [p].[MiddleName], 1)
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
	InStr(2, [p].[FirstName], IIF([p].[MiddleName] IS NULL, NULL, 'o'), 1)
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
	IIF([p].[MiddleName] IS NULL, NULL, InStr(IIF([p].[MiddleName] IS NULL, NULL, 1), [p].[FirstName], 'o', 1))
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
	[p].[MiddleName] IS NULL
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
DECLARE @start Integer -- Int32
SET     @start = 1

SELECT
	InStr(@start, [p].[FirstName], 'o', 1)
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
	IIF(False, 0, NULL)
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

