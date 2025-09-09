BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

