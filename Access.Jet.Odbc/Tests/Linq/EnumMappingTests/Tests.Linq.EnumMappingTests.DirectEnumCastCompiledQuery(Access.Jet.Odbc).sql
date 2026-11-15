-- Access.Jet.Odbc AccessODBC
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = ?
ORDER BY
	[p].[PersonID]

-- Access.Jet.Odbc AccessODBC
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = ?
ORDER BY
	[p].[PersonID]

