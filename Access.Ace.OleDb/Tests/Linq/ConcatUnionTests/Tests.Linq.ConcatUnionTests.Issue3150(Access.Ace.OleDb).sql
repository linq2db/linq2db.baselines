-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[PersonID],
	[p].[FirstName],
	CStr('id=1')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION ALL
SELECT
	[p_1].[PersonID],
	[p_1].[FirstName],
	CStr('id=2')
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 2

