-- Access.Ace.OleDb AccessOleDb
DECLARE @api WChar(1) -- StringFixedLength
SET     @api = 'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender], 'M')

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

