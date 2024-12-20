BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN ('John')

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @st NVarChar(4) -- String
SET     @st = 'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (?)

