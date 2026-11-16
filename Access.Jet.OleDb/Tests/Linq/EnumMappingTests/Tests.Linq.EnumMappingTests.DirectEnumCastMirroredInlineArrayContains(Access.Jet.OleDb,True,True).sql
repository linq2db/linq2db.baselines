-- Access.Jet.OleDb AccessOleDb
DECLARE @api Char(1) -- AnsiStringFixedLength
SET     @api = 'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender], 'M')

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

