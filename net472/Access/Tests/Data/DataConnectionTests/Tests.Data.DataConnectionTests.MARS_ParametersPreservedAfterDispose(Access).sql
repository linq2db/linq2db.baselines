BeforeExecute
-- Access AccessOleDb
DECLARE @param VarWChar(4) -- String
SET     @param = 'test'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[LastName] = @param

