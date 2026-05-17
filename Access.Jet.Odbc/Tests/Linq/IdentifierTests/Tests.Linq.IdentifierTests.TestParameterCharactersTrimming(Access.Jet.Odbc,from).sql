-- Access.Jet.Odbc AccessODBC
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[testparams] [t]
SET
	[t].[from] = ?
WHERE
	[t].[from] = 1

