BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 NVarChar(1) -- String
SET     @Parameter1 = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(IIF(1 = 0, 2, InStr(3, [p].[LastName], CVar(?), 1) - 1) = 4) AND
	[p].[PersonID] = 2

