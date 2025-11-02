-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN ('John')

-- Access.Ace.Odbc AccessODBC
DECLARE @st NVarChar(4) -- String
SET     @st = 'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (?)

