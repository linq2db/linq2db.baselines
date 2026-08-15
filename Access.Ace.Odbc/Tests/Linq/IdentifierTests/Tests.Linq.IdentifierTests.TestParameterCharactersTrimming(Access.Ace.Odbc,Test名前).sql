-- Access.Ace.Odbc AccessODBC
DECLARE @Test名前 Int -- Int32
SET     @Test名前 = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test名前] = ?
WHERE
	[t].[Test名前] = 1

