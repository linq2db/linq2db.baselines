BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	[testparams] [t]
SET
	[t].[_p] = @p
WHERE
	[t].[_p] = 1

