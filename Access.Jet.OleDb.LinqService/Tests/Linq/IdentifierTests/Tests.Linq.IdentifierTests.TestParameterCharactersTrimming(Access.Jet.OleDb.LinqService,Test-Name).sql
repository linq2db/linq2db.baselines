BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Name] = @TestName
WHERE
	[t].[Test-Name] = 1

