BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	[testparams] [t]
SET
	[t].[1p] = @p
WHERE
	[t].[1p] = 1

