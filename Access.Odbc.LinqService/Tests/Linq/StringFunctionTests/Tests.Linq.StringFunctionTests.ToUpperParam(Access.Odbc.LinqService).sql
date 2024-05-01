BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 NVarChar(4) -- String
SET     @Parameter1 = 'JOHN'

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

