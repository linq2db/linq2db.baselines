BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p NVarChar(4) -- String
SET     @p = 'JOHN'

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

