-- Access.Jet.Odbc AccessODBC
DECLARE @_p Int -- Int32
SET     @_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[_p] = ?
WHERE
	[t].[_p] = 1

