-- Access.Jet.Odbc AccessODBC
SELECT
	CStr('p_'),
	[p].[PersonID],
	CStr('X'),
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 2
UNION ALL
SELECT
	CStr('q_'),
	[p_1].[PersonID],
	CStr('X'),
	[p_1].[FirstName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] <= 2

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

