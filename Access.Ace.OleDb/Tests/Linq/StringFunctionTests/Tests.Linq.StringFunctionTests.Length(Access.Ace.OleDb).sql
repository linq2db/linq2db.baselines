BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Length Integer -- Int32
SET     @Length = 4

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Len([p].[FirstName]) = @Length AND [p].[PersonID] = 1

