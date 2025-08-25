BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @name VarWChar(4) -- String
SET     @name = 'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id AND [p].[FirstName] = @name

