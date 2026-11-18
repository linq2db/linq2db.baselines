-- Access.Jet.OleDb AccessOleDb
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Name] = @TestName
WHERE
	[t].[Test-Name] = 1

