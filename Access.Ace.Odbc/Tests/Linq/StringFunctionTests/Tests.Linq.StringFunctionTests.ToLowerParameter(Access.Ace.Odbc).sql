BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @param NVarChar(4) -- String
SET     @param = 'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) = LCase(?) AND [p].[PersonID] = 1

