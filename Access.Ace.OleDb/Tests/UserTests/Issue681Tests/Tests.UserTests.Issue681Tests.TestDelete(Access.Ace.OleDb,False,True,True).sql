-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	[Database\TestData].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

