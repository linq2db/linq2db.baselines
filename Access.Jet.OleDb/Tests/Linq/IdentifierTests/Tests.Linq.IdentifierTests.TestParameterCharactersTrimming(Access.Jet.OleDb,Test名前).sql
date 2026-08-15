-- Access.Jet.OleDb AccessOleDb
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test名前] = @Test
WHERE
	[t].[Test名前] = 1

