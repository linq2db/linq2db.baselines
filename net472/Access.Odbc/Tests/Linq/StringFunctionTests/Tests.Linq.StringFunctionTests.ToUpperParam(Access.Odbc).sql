BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @param_1 NVarChar(4) -- String
SET     @param_1 = 'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	UCase([p].[FirstName]) = ? AND [p].[PersonID] = 1

