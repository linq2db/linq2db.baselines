BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 NVarChar(4) -- String
SET     @Parameter1 = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) = ? AND [p].[PersonID] = 1

