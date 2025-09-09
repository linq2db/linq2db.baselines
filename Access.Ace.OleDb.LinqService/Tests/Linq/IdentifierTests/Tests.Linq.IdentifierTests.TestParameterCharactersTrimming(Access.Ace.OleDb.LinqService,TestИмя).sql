BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	[testparams] [t]
SET
	[t].[TestИмя] = @Test
WHERE
	[t].[TestИмя] = 1

