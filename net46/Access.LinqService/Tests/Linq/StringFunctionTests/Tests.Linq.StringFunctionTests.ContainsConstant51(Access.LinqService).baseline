BeforeExecute
-- Access AccessOleDb
DECLARE @ps VarWChar(5) -- String
SET     @ps = '%[[]%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123[456' LIKE @ps

