-- Access.Jet.Odbc AccessODBC
DECLARE @Test-Name Int -- Int32
SET     @Test-Name = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Name] = ?
WHERE
	[t].[Test-Name] = 1

