BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT TOP 2
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

