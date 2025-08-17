BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[p_p] = @p_p
WHERE
	[t].[p_p] = 1

