BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @t NVarChar(1) -- String
SET     @t = 'A'

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1]
WHERE
	[x_1].[FirstName] = ?

