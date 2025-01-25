BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p NVarChar(4) -- String
SET     @p = 'john'

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

