-- Access.Jet.Odbc AccessODBC
DECLARE @api Char(1) -- AnsiStringFixedLength
SET     @api = 'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	? IN ([p].[Gender])

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

