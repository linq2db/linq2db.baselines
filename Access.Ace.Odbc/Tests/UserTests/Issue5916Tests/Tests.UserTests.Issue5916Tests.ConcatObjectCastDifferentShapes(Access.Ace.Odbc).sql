-- Access.Ace.Odbc AccessODBC
SELECT
	CStr('p_'),
	[p].[PersonID],
	CStr('X'),
	[p].[FirstName],
	IIF(False, '', NULL),
	IIF(False, 0, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 2
UNION ALL
SELECT
	IIF(False, '', NULL),
	IIF(False, 0, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	CStr('c_'),
	[p_1].[PersonID],
	CStr('X'),
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] <= 2

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

