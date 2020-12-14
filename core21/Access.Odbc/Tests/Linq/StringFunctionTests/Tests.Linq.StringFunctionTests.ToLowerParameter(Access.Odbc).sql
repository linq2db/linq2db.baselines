BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @param NVarChar(4) -- String
SET     @param = 'JOHN'
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
	(LCase([p].[FirstName]) = LCase(?) OR LCase([p].[FirstName]) IS NULL AND LCase(?) IS NULL) AND
	[p].[PersonID] = 1

