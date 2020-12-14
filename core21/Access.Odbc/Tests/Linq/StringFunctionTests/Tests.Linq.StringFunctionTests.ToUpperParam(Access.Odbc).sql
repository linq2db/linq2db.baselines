BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @param NVarChar(4) -- String
SET     @param = 'john'
DECLARE @param NVarChar(4) -- String
SET     @param = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(UCase([p].[FirstName]) = UCase(?) OR UCase([p].[FirstName]) IS NULL AND UCase(?) IS NULL) AND
	[p].[PersonID] = 1

