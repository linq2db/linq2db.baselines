-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Char(1) -- AnsiStringFixedLength
SET     @Value = 'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Value

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

