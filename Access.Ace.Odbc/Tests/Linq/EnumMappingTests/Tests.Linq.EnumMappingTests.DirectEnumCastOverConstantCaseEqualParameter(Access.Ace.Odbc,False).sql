-- Access.Ace.Odbc AccessODBC
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	? = IIF([p].[PersonID] > 3, 'M', IIF([p].[PersonID] > 2, 'O', 'F'))

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

