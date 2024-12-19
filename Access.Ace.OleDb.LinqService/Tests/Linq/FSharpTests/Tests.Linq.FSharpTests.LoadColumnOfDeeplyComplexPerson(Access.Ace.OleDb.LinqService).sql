BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT TOP 2
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

