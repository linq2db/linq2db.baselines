-- Access.Jet.Odbc AccessODBC
DECLARE @gender VarChar(1) -- AnsiString
SET     @gender = 'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	? = IIF([p].[PersonID] > 2, 'M', 'F')
ORDER BY
	[p].[PersonID]

