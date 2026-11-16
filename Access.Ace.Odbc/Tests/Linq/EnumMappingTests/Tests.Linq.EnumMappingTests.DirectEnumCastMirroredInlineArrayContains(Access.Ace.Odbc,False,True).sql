-- Access.Ace.Odbc AccessODBC
DECLARE @api NChar(1) -- StringFixedLength
SET     @api = 'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	? IN ([p].[Gender], 'M')

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

